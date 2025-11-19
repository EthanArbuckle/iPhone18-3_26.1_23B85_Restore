@interface VNImageprint
- (BOOL)isEqual:(id)a3;
- (Class)requestClassAndReturnError:(id *)a3;
- (NSString)requestClassName;
- (VNImageprint)initWithCoder:(id)a3;
- (VNImageprint)initWithImageDescriptor:(id)a3 type:(unint64_t)a4 originatingRequestSpecifier:(id)a5;
- (VNImageprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)distanceToImageprint:(id)a3 error:(id *)a4;
- (id)serializeStateAndReturnError:(id *)a3;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageprint

- (unint64_t)requestRevision
{
  v2 = [(VNImageprint *)self originatingRequestSpecifier];
  v3 = [v2 requestRevision];

  return v3;
}

- (Class)requestClassAndReturnError:(id *)a3
{
  v4 = [(VNImageprint *)self originatingRequestSpecifier];
  v5 = [v4 requestClassAndReturnError:a3];

  return v5;
}

- (NSString)requestClassName
{
  v2 = [(VNImageprint *)self originatingRequestSpecifier];
  v3 = [v2 requestClassName];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNImageprint *)self type];
      if (v6 == -[VNImageprint type](v5, "type") && (-[VNImageprint originatingRequestSpecifier](self, "originatingRequestSpecifier"), v7 = objc_claimAutoreleasedReturnValue(), -[VNImageprint originatingRequestSpecifier](v5, "originatingRequestSpecifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) != 0))
      {
        v10 = [(VNImageprint *)self descriptor];
        v11 = [(VNImageprint *)v5 descriptor];
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
  v4 = [(VNImageprint *)self descriptor];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return [(VNRequestSpecifier *)self->_originatingRequestSpecifier hash]^ __ROR8__([(VNImageprint *)self type]^ __ROR8__(v5, 51), 51);
}

- (id)serializeStateAndReturnError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNImageprint serializedLength](self, "serializedLength")}];
  if ([(VNImageprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:a3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      [VNError errorWithCode:14 message:@"state cannot be nil"];
      *a5 = v17 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v10 = [v8 mutableBytes];
  *&v23[12] = 0;
  *&v23[20] = 0;
  *v23 = 0x3CBA7097ELL;
  v11 = [(VNImageprint *)self serializedLength];
  *&v23[8] = v11;
  v12 = [(VNMPImageDescriptor *)self->_descriptor serializeStateIntoData:v9 startingAtByteOffset:a4 + 28 error:a5];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = (v10 + v12 + a4 + 28);
  *v14 = self->_type;
  v14[1] = [(VNRequestSpecifier *)self->_originatingRequestSpecifier requestRevision];
  v22 = 0;
  v15 = [(VNRequestSpecifier *)self->_originatingRequestSpecifier requestClassName];
  v16 = apple::vision::VNGetSerializingClassCodeForClassName(v15, &v22, a5);

  if (!v16)
  {
    goto LABEL_10;
  }

  v14[2] = v22;
  v17 = v13 + 40;
  if (v13 + 40 != v11)
  {
    if (a5)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *a5 = [VNError errorWithCode:9 message:v20];
    }

    goto LABEL_10;
  }

  v18 = (v10 + a4);
  calculateChecksumMD5((v10 + a4 + 28), v13 + 12, &v23[12]);
  v19 = *v23;
  *(v18 + 12) = *&v23[12];
  *v18 = v19;
LABEL_11:

  return v17;
}

- (VNImageprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      v14 = [VNError errorWithCode:14 message:@"state cannot be nil"];
      goto LABEL_11;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_51;
  }

  v10 = [v8 bytes];
  v11 = *a4;
  v12 = (v10 + *a4);
  *v35 = *v12;
  *&v35[12] = *(v12 + 12);
  *a4 = v11 + 28;
  if (*v35 != -878245506)
  {
    if ([v9 length] == 136)
    {
      v16 = [[VNMPImageDescriptor alloc] initWithRawColorGaborDescriptor:v9];
      if (v16)
      {
        v17 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:a5];
        if (v17)
        {
          self = [(VNImageprint *)self initWithImageDescriptor:v16 type:0 originatingRequestSpecifier:v17];
          v15 = self;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_31;
      }

      if (a5)
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
        v19 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)v18 serializeAsVNImageprintStateAndReturnError:a5];
        *a4 = 0;
        self = [(VNImageprint *)self initWithState:v19 byteOffset:a4 error:a5];

        v15 = self;
LABEL_31:

        goto LABEL_51;
      }

      if (a5)
      {
LABEL_27:
        [VNError errorWithCode:2 message:@"Invalid format of VNImageprint serialized state"];
        *a5 = v15 = 0;
        goto LABEL_31;
      }
    }

    v15 = 0;
    goto LABEL_31;
  }

  v33 = 0;
  v34 = 0;
  calculateChecksumMD5((v10 + 28), [v9 length] - 28, &v33);
  v13 = *&v35[12] == v33 && *&v35[20] == v34;
  if (v13)
  {
    v20 = [[VNMPImageDescriptor alloc] initWithState:v9 byteOffset:a4 error:a5];
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = *a4;
    v22 = *(v10 + *a4);
    v23 = *a4 + 4;
    *a4 = v23;
    if (v22)
    {
      if (a5)
      {
        v24 = [VNError errorWithCode:9 message:@"Failed to deserialize requestRevision"];
LABEL_23:
        v15 = 0;
        *a5 = v24;
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
        if (a5)
        {
          v24 = [VNError errorForUnsupportedSerializingHeaderVersion:*&v35[4]];
          goto LABEL_23;
        }

LABEL_45:
        v15 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v26 = *(v10 + v23);
      *a4 = v21 + 8;
      v13 = v25 == 3;
      v25 = v26;
      if (v13)
      {
        v27 = *(v10 + v21 + 8);
        *a4 = v21 + 12;
        v28 = [VNClassRegistrar classNameForClassCode:v27 error:a5];
        if (!v28 || ([VNRequestSpecifier specifierForRequestClassName:v28 revision:v26 error:a5], v29 = objc_claimAutoreleasedReturnValue(), v28, !v29))
        {
          v29 = 0;
          goto LABEL_48;
        }

LABEL_40:
        if (*a4 - v11 == *&v35[8])
        {
          v30 = [(VNImageprint *)self initWithImageDescriptor:v20 type:0 originatingRequestSpecifier:v29];
          if (v30)
          {
            self = v30;
            v15 = self;
LABEL_49:

            goto LABEL_50;
          }

          if (a5)
          {
            [VNError errorWithCode:9 message:@"Failed to initialize VNImageprint object"];
            self = 0;
            *a5 = v15 = 0;
            goto LABEL_49;
          }

          self = 0;
        }

        else if (a5)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
          *a5 = [VNError errorWithCode:9 message:v31];
        }

LABEL_48:
        v15 = 0;
        goto LABEL_49;
      }
    }

    v29 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:v25 error:a5];
    if (!v29)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  v14 = [VNError errorWithCode:9 message:@"Serialized and calculated MD5s don't match"];
LABEL_11:
  v15 = 0;
  *a5 = v14;
LABEL_51:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithImageDescriptor:type:originatingRequestSpecifier:", self->_descriptor, self->_type, self->_originatingRequestSpecifier}];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 vn_encodeCodingVersion:0 forKey:@"VNIp"];
  [v5 encodeObject:self->_descriptor forKey:@"MPImDesc"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v4 forKey:@"ipType"];

  [v5 encodeObject:self->_originatingRequestSpecifier forKey:@"ipOrgReq"];
}

- (VNImageprint)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 vn_decodeCodingVersionForKey:@"VNIp"])
  {
    goto LABEL_2;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPImDesc"];
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ipType"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 unsignedIntegerValue];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipOrgReq"];
    if (v13)
    {
      goto LABEL_7;
    }

    if (![v4 containsValueForKey:@"ipOrgReq"])
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipReqRev"];
      v16 = v17;
      if (v17)
      {
        v18 = [v17 unsignedIntegerValue];
      }

      else
      {
        v18 = 1;
      }

      v21 = 0;
      v13 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:v18 error:&v21];
      v19 = v21;
      v20 = v19;
      if (!v13)
      {
        [v4 failWithError:v19];

        v15 = 0;
LABEL_8:

        if (v15)
        {
          self = self;
          v5 = self;
          goto LABEL_3;
        }

        goto LABEL_2;
      }

LABEL_7:
      v14 = [(VNImageprint *)self initWithImageDescriptor:v5 type:v12 originatingRequestSpecifier:v13];
      v15 = v14 != 0;
      v16 = v13;
      self = v14;
      goto LABEL_8;
    }
  }

LABEL_2:
  v5 = 0;
LABEL_3:

  return v5;
}

- (VNImageprint)initWithImageDescriptor:(id)a3 type:(unint64_t)a4 originatingRequestSpecifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = VNImageprint;
  v11 = [(VNImageprint *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, a3);
    v12->_type = a4;
    objc_storeStrong(&v12->_originatingRequestSpecifier, a5);
    v13 = v12;
  }

  return v12;
}

- (id)distanceToImageprint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
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
    v11 = v6;
    if ((VNExecuteBlock(v10, a4) & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v14[6] != INFINITY)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      goto LABEL_11;
    }

    if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"could not compute faceprint distance"];
      *a4 = v8 = 0;
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

  if (a4)
  {
    [VNError errorWithCode:14 message:@"otherImageprint cannot be nil"];
    *a4 = v8 = 0;
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