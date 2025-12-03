@interface _ANEInMemoryModelDescriptor
+ (id)modelWithMILText:(id)text weights:(id)weights optionsPlist:(id)plist;
+ (id)modelWithNetworkDescription:(id)description weights:(id)weights optionsPlist:(id)plist;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInMemoryModelDescriptor:(id)descriptor;
- (_ANEInMemoryModelDescriptor)initWithNetworkText:(id)text weights:(id)weights optionsPlist:(id)plist isMILModel:(BOOL)model;
- (id)hexStringIdentifier;
- (unint64_t)hash;
@end

@implementation _ANEInMemoryModelDescriptor

- (_ANEInMemoryModelDescriptor)initWithNetworkText:(id)text weights:(id)weights optionsPlist:(id)plist isMILModel:(BOOL)model
{
  v60 = *MEMORY[0x1E69E9840];
  textCopy = text;
  weightsCopy = weights;
  plistCopy = plist;
  if (textCopy && weightsCopy)
  {
    v50.receiver = self;
    v50.super_class = _ANEInMemoryModelDescriptor;
    self = [(_ANEInMemoryModelDescriptor *)&v50 init];
    if (self)
    {
      v42 = a2;
      modelCopy = model;
      v44 = plistCopy;
      v45 = textCopy;
      v14 = [textCopy copy];
      networkText = self->_networkText;
      self->_networkText = v14;

      v16 = [_ANEHashEncoding hexStringForData:self->_networkText];
      networkTextHash = self->_networkTextHash;
      self->_networkTextHash = v16;

      objc_storeStrong(&self->_weights, weights);
      v18 = [MEMORY[0x1E695E0F0] mutableCopy];
      allKeys = [weightsCopy allKeys];
      v20 = [allKeys sortedArrayUsingComparator:&__block_literal_global_7];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v47;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v47 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v46 + 1) + 8 * i);
            v27 = [weightsCopy objectForKeyedSubscript:v26];
            if (![v27 count])
            {
              v38 = +[_ANELog framework];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                [_ANEInMemoryModelDescriptor initWithNetworkText:v42 weights:v26 optionsPlist:v38 isMILModel:?];
              }

              selfCopy = 0;
              plistCopy = v44;
              textCopy = v45;
              goto LABEL_20;
            }

            allValues = [v27 allValues];
            firstObject = [allValues firstObject];

            [v18 addObject:firstObject];
          }

          v23 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v30 = [_ANEHashEncoding hexStringForDataArray:v18];
      weightsHash = self->_weightsHash;
      self->_weightsHash = v30;

      plistCopy = v44;
      v32 = [v44 copy];
      optionsPlist = self->_optionsPlist;
      self->_optionsPlist = v32;

      v34 = [_ANEHashEncoding hexStringForData:self->_optionsPlist];
      optionsPlistHash = self->_optionsPlistHash;
      self->_optionsPlistHash = v34;

      self->_isMILModel = modelCopy;
      textCopy = v45;
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    v37 = +[_ANELog framework];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      *buf = 138413058;
      v53 = v41;
      v54 = 2112;
      v55 = textCopy;
      v56 = 2112;
      v57 = weightsCopy;
      v58 = 2112;
      v59 = plistCopy;
      _os_log_error_impl(&dword_1AD246000, v37, OS_LOG_TYPE_ERROR, "%@: Invalid arguments. networkText=%@ : weights=%@ : optionsPlist=%@", buf, 0x2Au);
    }

    selfCopy = 0;
  }

LABEL_20:

  v39 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)modelWithNetworkDescription:(id)description weights:(id)weights optionsPlist:(id)plist
{
  plistCopy = plist;
  weightsCopy = weights;
  descriptionCopy = description;
  v11 = [[self alloc] initWithNetworkText:descriptionCopy weights:weightsCopy optionsPlist:plistCopy isMILModel:0];

  return v11;
}

+ (id)modelWithMILText:(id)text weights:(id)weights optionsPlist:(id)plist
{
  plistCopy = plist;
  weightsCopy = weights;
  textCopy = text;
  v11 = [[self alloc] initWithNetworkText:textCopy weights:weightsCopy optionsPlist:plistCopy isMILModel:1];

  return v11;
}

- (id)hexStringIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  networkTextHash = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  weightsHash = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  optionsPlistHash = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  v7 = [v3 stringWithFormat:@"%@_%@_%@", networkTextHash, weightsHash, optionsPlistHash];

  return v7;
}

- (BOOL)isEqualToInMemoryModelDescriptor:(id)descriptor
{
  if (!descriptor)
  {
    return 0;
  }

  descriptorCopy = descriptor;
  networkTextHash = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  networkTextHash2 = [descriptorCopy networkTextHash];
  v7 = [networkTextHash isEqual:networkTextHash2];

  weightsHash = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  weightsHash2 = [descriptorCopy weightsHash];
  v10 = [weightsHash isEqual:weightsHash2];

  optionsPlistHash = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  optionsPlistHash2 = [descriptorCopy optionsPlistHash];

  LOBYTE(descriptorCopy) = [optionsPlistHash isEqual:optionsPlistHash2];
  return v7 & v10 & descriptorCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ANEInMemoryModelDescriptor *)self isEqualToInMemoryModelDescriptor:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  networkTextHash = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  v4 = [networkTextHash hash];
  weightsHash = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  v6 = [weightsHash hash] ^ v4;
  optionsPlistHash = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  v8 = [optionsPlistHash hash];

  return v6 ^ v8;
}

- (void)initWithNetworkText:(NSObject *)a3 weights:optionsPlist:isMILModel:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1AD246000, a3, OS_LOG_TYPE_ERROR, "%@: Empty weights dictionary for index=%@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end