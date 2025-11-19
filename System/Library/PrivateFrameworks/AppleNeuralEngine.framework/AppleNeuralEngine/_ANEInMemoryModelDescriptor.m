@interface _ANEInMemoryModelDescriptor
+ (id)modelWithMILText:(id)a3 weights:(id)a4 optionsPlist:(id)a5;
+ (id)modelWithNetworkDescription:(id)a3 weights:(id)a4 optionsPlist:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInMemoryModelDescriptor:(id)a3;
- (_ANEInMemoryModelDescriptor)initWithNetworkText:(id)a3 weights:(id)a4 optionsPlist:(id)a5 isMILModel:(BOOL)a6;
- (id)hexStringIdentifier;
- (unint64_t)hash;
@end

@implementation _ANEInMemoryModelDescriptor

- (_ANEInMemoryModelDescriptor)initWithNetworkText:(id)a3 weights:(id)a4 optionsPlist:(id)a5 isMILModel:(BOOL)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11 && v12)
  {
    v50.receiver = self;
    v50.super_class = _ANEInMemoryModelDescriptor;
    self = [(_ANEInMemoryModelDescriptor *)&v50 init];
    if (self)
    {
      v42 = a2;
      v43 = a6;
      v44 = v13;
      v45 = v11;
      v14 = [v11 copy];
      networkText = self->_networkText;
      self->_networkText = v14;

      v16 = [_ANEHashEncoding hexStringForData:self->_networkText];
      networkTextHash = self->_networkTextHash;
      self->_networkTextHash = v16;

      objc_storeStrong(&self->_weights, a4);
      v18 = [MEMORY[0x1E695E0F0] mutableCopy];
      v19 = [v12 allKeys];
      v20 = [v19 sortedArrayUsingComparator:&__block_literal_global_7];

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
            v27 = [v12 objectForKeyedSubscript:v26];
            if (![v27 count])
            {
              v38 = +[_ANELog framework];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                [_ANEInMemoryModelDescriptor initWithNetworkText:v42 weights:v26 optionsPlist:v38 isMILModel:?];
              }

              v36 = 0;
              v13 = v44;
              v11 = v45;
              goto LABEL_20;
            }

            v28 = [v27 allValues];
            v29 = [v28 firstObject];

            [v18 addObject:v29];
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

      v13 = v44;
      v32 = [v44 copy];
      optionsPlist = self->_optionsPlist;
      self->_optionsPlist = v32;

      v34 = [_ANEHashEncoding hexStringForData:self->_optionsPlist];
      optionsPlistHash = self->_optionsPlistHash;
      self->_optionsPlistHash = v34;

      self->_isMILModel = v43;
      v11 = v45;
    }

    self = self;
    v36 = self;
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
      v55 = v11;
      v56 = 2112;
      v57 = v12;
      v58 = 2112;
      v59 = v13;
      _os_log_error_impl(&dword_1AD246000, v37, OS_LOG_TYPE_ERROR, "%@: Invalid arguments. networkText=%@ : weights=%@ : optionsPlist=%@", buf, 0x2Au);
    }

    v36 = 0;
  }

LABEL_20:

  v39 = *MEMORY[0x1E69E9840];
  return v36;
}

+ (id)modelWithNetworkDescription:(id)a3 weights:(id)a4 optionsPlist:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithNetworkText:v10 weights:v9 optionsPlist:v8 isMILModel:0];

  return v11;
}

+ (id)modelWithMILText:(id)a3 weights:(id)a4 optionsPlist:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithNetworkText:v10 weights:v9 optionsPlist:v8 isMILModel:1];

  return v11;
}

- (id)hexStringIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  v5 = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  v6 = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  v7 = [v3 stringWithFormat:@"%@_%@_%@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqualToInMemoryModelDescriptor:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  v6 = [v4 networkTextHash];
  v7 = [v5 isEqual:v6];

  v8 = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  v9 = [v4 weightsHash];
  v10 = [v8 isEqual:v9];

  v11 = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  v12 = [v4 optionsPlistHash];

  LOBYTE(v4) = [v11 isEqual:v12];
  return v7 & v10 & v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ANEInMemoryModelDescriptor *)self isEqualToInMemoryModelDescriptor:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_ANEInMemoryModelDescriptor *)self networkTextHash];
  v4 = [v3 hash];
  v5 = [(_ANEInMemoryModelDescriptor *)self weightsHash];
  v6 = [v5 hash] ^ v4;
  v7 = [(_ANEInMemoryModelDescriptor *)self optionsPlistHash];
  v8 = [v7 hash];

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