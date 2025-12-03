@interface VNImageprint
- (BOOL)isEqual:(id)equal;
- (Class)requestClassAndReturnError:(id *)error;
- (NSString)requestClassName;
- (VNImageprint)initWithCoder:(id)coder;
- (VNImageprint)initWithImageDescriptor:(id)descriptor type:(unint64_t)type originatingRequestSpecifier:(id)specifier;
- (VNImageprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)distanceToImageprint:(id)imageprint error:(id *)error;
- (id)serializeStateAndReturnError:(id *)error;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageprint

- (unint64_t)requestRevision
{
  originatingRequestSpecifier = [(VNImageprint *)self originatingRequestSpecifier];
  requestRevision = [originatingRequestSpecifier requestRevision];

  return requestRevision;
}

- (Class)requestClassAndReturnError:(id *)error
{
  originatingRequestSpecifier = [(VNImageprint *)self originatingRequestSpecifier];
  v5 = [originatingRequestSpecifier requestClassAndReturnError:error];

  return v5;
}

- (NSString)requestClassName
{
  originatingRequestSpecifier = [(VNImageprint *)self originatingRequestSpecifier];
  requestClassName = [originatingRequestSpecifier requestClassName];

  return requestClassName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(VNImageprint *)self type];
      if (type == -[VNImageprint type](v5, "type") && (-[VNImageprint originatingRequestSpecifier](self, "originatingRequestSpecifier"), v7 = objc_claimAutoreleasedReturnValue(), -[VNImageprint originatingRequestSpecifier](v5, "originatingRequestSpecifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) != 0))
      {
        descriptor = [(VNImageprint *)self descriptor];
        descriptor2 = [(VNImageprint *)v5 descriptor];
        v12 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNImageprint;
  v3 = [(VNImageprint *)&v7 hash];
  descriptor = [(VNImageprint *)self descriptor];
  v5 = [descriptor hash] ^ __ROR8__(v3, 51);

  return [(VNRequestSpecifier *)self->_originatingRequestSpecifier hash]^ __ROR8__([(VNImageprint *)self type]^ __ROR8__(v5, 51), 51);
}

- (id)serializeStateAndReturnError:(id *)error
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNImageprint serializedLength](self, "serializedLength")}];
  if ([(VNImageprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:error])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (!dataCopy)
  {
    if (error)
    {
      [VNError errorWithCode:14 message:@"state cannot be nil"];
      *error = v17 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v23[12] = 0;
  *&v23[20] = 0;
  *v23 = 0x3CBA7097ELL;
  serializedLength = [(VNImageprint *)self serializedLength];
  *&v23[8] = serializedLength;
  v12 = [(VNMPImageDescriptor *)self->_descriptor serializeStateIntoData:v9 startingAtByteOffset:offset + 28 error:error];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = (mutableBytes + v12 + offset + 28);
  *v14 = self->_type;
  v14[1] = [(VNRequestSpecifier *)self->_originatingRequestSpecifier requestRevision];
  v22 = 0;
  requestClassName = [(VNRequestSpecifier *)self->_originatingRequestSpecifier requestClassName];
  v16 = apple::vision::VNGetSerializingClassCodeForClassName(requestClassName, &v22, error);

  if (!v16)
  {
    goto LABEL_10;
  }

  v14[2] = v22;
  v17 = v13 + 40;
  if (v13 + 40 != serializedLength)
  {
    if (error)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorWithCode:9 message:v20];
    }

    goto LABEL_10;
  }

  v18 = (mutableBytes + offset);
  calculateChecksumMD5((mutableBytes + offset + 28), v13 + 12, &v23[12]);
  v19 = *v23;
  *(v18 + 12) = *&v23[12];
  *v18 = v19;
LABEL_11:

  return v17;
}

- (VNImageprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v9 = stateCopy;
  if (!stateCopy)
  {
    if (error)
    {
      v14 = [VNError errorWithCode:14 message:@"state cannot be nil"];
      goto LABEL_11;
    }

LABEL_16:
    selfCopy3 = 0;
    goto LABEL_51;
  }

  bytes = [stateCopy bytes];
  v11 = *offset;
  v12 = (bytes + *offset);
  *v35 = *v12;
  *&v35[12] = *(v12 + 12);
  *offset = v11 + 28;
  if (*v35 != -878245506)
  {
    if ([v9 length] == 136)
    {
      v16 = [[VNMPImageDescriptor alloc] initWithRawColorGaborDescriptor:v9];
      if (v16)
      {
        v17 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:error];
        if (v17)
        {
          self = [(VNImageprint *)self initWithImageDescriptor:v16 type:0 originatingRequestSpecifier:v17];
          selfCopy3 = self;
        }

        else
        {
          selfCopy3 = 0;
        }

        goto LABEL_31;
      }

      if (error)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = [[VNCVMLImageprintObservation_LegacySupportDoNotChange alloc] initWithData:v9];
      v16 = v18;
      if (v18)
      {
        v19 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)v18 serializeAsVNImageprintStateAndReturnError:error];
        *offset = 0;
        self = [(VNImageprint *)self initWithState:v19 byteOffset:offset error:error];

        selfCopy3 = self;
LABEL_31:

        goto LABEL_51;
      }

      if (error)
      {
LABEL_27:
        [VNError errorWithCode:2 message:@"Invalid format of VNImageprint serialized state"];
        *error = selfCopy3 = 0;
        goto LABEL_31;
      }
    }

    selfCopy3 = 0;
    goto LABEL_31;
  }

  v33 = 0;
  v34 = 0;
  calculateChecksumMD5((bytes + 28), [v9 length] - 28, &v33);
  v13 = *&v35[12] == v33 && *&v35[20] == v34;
  if (v13)
  {
    v20 = [[VNMPImageDescriptor alloc] initWithState:v9 byteOffset:offset error:error];
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = *offset;
    v22 = *(bytes + *offset);
    v23 = *offset + 4;
    *offset = v23;
    if (v22)
    {
      if (error)
      {
        v24 = [VNError errorWithCode:9 message:@"Failed to deserialize requestRevision"];
LABEL_23:
        selfCopy3 = 0;
        *error = v24;
LABEL_50:

        goto LABEL_51;
      }

      goto LABEL_45;
    }

    v25 = *&v35[4];
    if ((*&v35[4] - 2) >= 2)
    {
      if (*&v35[4] != 1)
      {
        if (error)
        {
          v24 = [VNError errorForUnsupportedSerializingHeaderVersion:*&v35[4]];
          goto LABEL_23;
        }

LABEL_45:
        selfCopy3 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v26 = *(bytes + v23);
      *offset = v21 + 8;
      v13 = v25 == 3;
      v25 = v26;
      if (v13)
      {
        v27 = *(bytes + v21 + 8);
        *offset = v21 + 12;
        v28 = [VNClassRegistrar classNameForClassCode:v27 error:error];
        if (!v28 || ([VNRequestSpecifier specifierForRequestClassName:v28 revision:v26 error:error], v29 = objc_claimAutoreleasedReturnValue(), v28, !v29))
        {
          v29 = 0;
          goto LABEL_48;
        }

LABEL_40:
        if (*offset - v11 == *&v35[8])
        {
          v30 = [(VNImageprint *)self initWithImageDescriptor:v20 type:0 originatingRequestSpecifier:v29];
          if (v30)
          {
            self = v30;
            selfCopy3 = self;
LABEL_49:

            goto LABEL_50;
          }

          if (error)
          {
            [VNError errorWithCode:9 message:@"Failed to initialize VNImageprint object"];
            self = 0;
            *error = selfCopy3 = 0;
            goto LABEL_49;
          }

          self = 0;
        }

        else if (error)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
          *error = [VNError errorWithCode:9 message:v31];
        }

LABEL_48:
        selfCopy3 = 0;
        goto LABEL_49;
      }
    }

    v29 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:v25 error:error];
    if (!v29)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (!error)
  {
    goto LABEL_16;
  }

  v14 = [VNError errorWithCode:9 message:@"Serialized and calculated MD5s don't match"];
LABEL_11:
  selfCopy3 = 0;
  *error = v14;
LABEL_51:

  return selfCopy3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithImageDescriptor:type:originatingRequestSpecifier:", self->_descriptor, self->_type, self->_originatingRequestSpecifier}];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNIp"];
  [coderCopy encodeObject:self->_descriptor forKey:@"MPImDesc"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"ipType"];

  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"ipOrgReq"];
}

- (VNImageprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy vn_decodeCodingVersionForKey:@"VNIp"])
  {
    goto LABEL_2;
  }

  selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPImDesc"];
  if (!selfCopy)
  {
    goto LABEL_3;
  }

  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ipType"];
  v11 = v10;
  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipOrgReq"];
    if (v13)
    {
      goto LABEL_7;
    }

    if (![coderCopy containsValueForKey:@"ipOrgReq"])
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipReqRev"];
      v16 = v17;
      if (v17)
      {
        unsignedIntegerValue2 = [v17 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue2 = 1;
      }

      v21 = 0;
      v13 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:unsignedIntegerValue2 error:&v21];
      v19 = v21;
      v20 = v19;
      if (!v13)
      {
        [coderCopy failWithError:v19];

        v15 = 0;
LABEL_8:

        if (v15)
        {
          self = self;
          selfCopy = self;
          goto LABEL_3;
        }

        goto LABEL_2;
      }

LABEL_7:
      v14 = [(VNImageprint *)self initWithImageDescriptor:selfCopy type:unsignedIntegerValue originatingRequestSpecifier:v13];
      v15 = v14 != 0;
      v16 = v13;
      self = v14;
      goto LABEL_8;
    }
  }

LABEL_2:
  selfCopy = 0;
LABEL_3:

  return selfCopy;
}

- (VNImageprint)initWithImageDescriptor:(id)descriptor type:(unint64_t)type originatingRequestSpecifier:(id)specifier
{
  descriptorCopy = descriptor;
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = VNImageprint;
  v11 = [(VNImageprint *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, descriptor);
    v12->_type = type;
    objc_storeStrong(&v12->_originatingRequestSpecifier, specifier);
    v13 = v12;
  }

  return v12;
}

- (id)distanceToImageprint:(id)imageprint error:(id *)error
{
  imageprintCopy = imageprint;
  v7 = imageprintCopy;
  if (imageprintCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 2139095040;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__VNImageprint_distanceToImageprint_error___block_invoke;
    v10[3] = &unk_1E77B5338;
    v12 = &v13;
    v10[4] = self;
    v11 = imageprintCopy;
    if ((VNExecuteBlock(v10, error) & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v14[6] != INFINITY)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      goto LABEL_11;
    }

    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"could not compute faceprint distance"];
      *error = v8 = 0;
    }

    else
    {
LABEL_6:
      v8 = 0;
    }

LABEL_11:

    _Block_object_dispose(&v13, 8);
    goto LABEL_12;
  }

  if (error)
  {
    [VNError errorWithCode:14 message:@"otherImageprint cannot be nil"];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8;
}

uint64_t __43__VNImageprint_distanceToImageprint_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) descriptor];
  [v2 distanceFromDescriptor:v3];
  *(*(*(a1 + 48) + 8) + 24) = v4;

  return 1;
}

@end