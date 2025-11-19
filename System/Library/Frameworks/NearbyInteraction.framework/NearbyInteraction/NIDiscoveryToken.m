@interface NIDiscoveryToken
+ (id)_identifyingSequenceFromBytes:(id)a3;
+ (id)deserialize:(id)a3;
+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3;
+ (id)generateFindingTokenWithIRK:(id)a3;
+ (id)generateTokenWithUUID:(id)a3;
+ (id)serialize:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NIDiscoveryToken)initWithBytes:(id)a3;
- (NIDiscoveryToken)initWithCoder:(id)a3;
- (NIDiscoveryToken)initWithDeviceAddress:(unsigned __int16)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceCapabilities;
- (id)getIRK;
- (id)getSessionIdentifier;
- (id)objectInRawTokenOPACKDictForKey:(id)a3;
- (int64_t)tokenVariant;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIDiscoveryToken

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIDiscoveryToken *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

+ (id)generateFindingTokenWithIRK:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NIFindingSupport.mm" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"IRK"}];
  }

  if ([v5 length] != 16)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"NIFindingSupport.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"IRK.length == NIDiscoveryTokenIRKLengthBytes"}];
  }

  v15[0] = &unk_1F38D7A88;
  v15[1] = &unk_1F38D7AB8;
  v16[0] = &unk_1F38D7AA0;
  v16[1] = v5;
  v15[2] = &unk_1F38D7AD0;
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&kFixedSessionIdentifierBytes length:3];
  v16[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v8 = MEMORY[0x1BFAFF9B0](v7, 8, 0);
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NIFindingSupport.mm" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v9 = [[NIDiscoveryToken alloc] initWithBytes:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"NIFindingSupport.mm" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"beaconIdentifier"}];
  }

  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];

  v15[0] = &unk_1F38D7A88;
  v15[1] = &unk_1F38D7B00;
  v16[0] = &unk_1F38D7AE8;
  v16[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v9 = MEMORY[0x1BFAFF9B0](v8, 8, 0);
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NIFindingSupport.mm" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v10 = [[NIDiscoveryToken alloc] initWithBytes:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)generateTokenWithUUID:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];

  v14 = &unk_1F38D7B18;
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = MEMORY[0x1BFAFF9B0](v8, 8, 0);
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"NIItemLocalizerSupport.mm" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v10 = [[NIDiscoveryToken alloc] initWithBytes:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NIDiscoveryToken)initWithBytes:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"bytes"}];
  }

  v13.receiver = self;
  v13.super_class = NIDiscoveryToken;
  v7 = [(NIDiscoveryToken *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rawToken, a3);
    v9 = [NIDiscoveryToken _identifyingSequenceFromBytes:v6];
    identifyingSequence = v8->_identifyingSequence;
    v8->_identifyingSequence = v9;
  }

  return v8;
}

+ (id)_identifyingSequenceFromBytes:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    __assert_rtn("+[NIDiscoveryToken _identifyingSequenceFromBytes:]", "NIConfiguration.mm", 71, "bytes");
  }

  v5 = [v3 copy];
  v6 = OPACKDecodeData();
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = objc_opt_new();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__NIDiscoveryToken__identifyingSequenceFromBytes___block_invoke;
    v11[3] = &unk_1E7F14030;
    v12 = v6;
    v13 = &v14;
    [&unk_1F38D7C20 enumerateObjectsUsingBlock:v11];
    v7 = [v15[5] length];
    v8 = v5;
    if (v7)
    {
      v8 = v15[5];
    }

    v9 = v8;

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

void __50__NIDiscoveryToken__identifyingSequenceFromBytes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length])
      {
        [*(*(*(a1 + 40) + 8) + 40) appendData:v3];
      }
    }
  }
}

- (id)objectInRawTokenOPACKDictForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  rawToken = self->_rawToken;
  v7 = OPACKDecodeData();
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKey:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)tokenVariant
{
  v2 = [(NIDiscoveryToken *)self objectInRawTokenOPACKDictForKey:&unk_1F38D7BC0];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 integerValue] <= 3)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)deviceCapabilities
{
  v2 = [(NIDiscoveryToken *)self objectInRawTokenOPACKDictForKey:&unk_1F38D7BD8];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = -[NIDeviceCapabilities initWithBitmap:]([NIDeviceCapabilities alloc], "initWithBitmap:", [v2 unsignedCharValue]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getIRK
{
  v2 = [(NIDiscoveryToken *)self rawToken];
  v3 = OPACKDecodeData();

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:&unk_1F38D7B48];
    v5 = v4;
    if (v4 && [v4 length] == 16)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getSessionIdentifier
{
  v2 = [(NIDiscoveryToken *)self rawToken];
  v3 = OPACKDecodeData();

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:&unk_1F38D7B30];
    v5 = v4;
    if (v4 && [v4 length] == 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serialize:(id)a3
{
  v3 = a3;
  if ([v3 count] <= 0x3E8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__0;
    v11 = __Block_byref_object_dispose__0;
    v12 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__NIDiscoveryToken_serialize___block_invoke;
    v6[3] = &unk_1E7F14058;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __30__NIDiscoveryToken_serialize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rawToken];
  v5 = [v4 length];

  if (v5 >= 0x100)
  {
    __assert_rtn("+[NIDiscoveryToken serialize:]_block_invoke", "NIConfiguration.mm", 203, "tokenLength <= std::numeric_limits<uint8_t>::max()");
  }

  v8 = v5;
  [*(*(*(a1 + 32) + 8) + 40) appendBytes:&v8 length:1];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v3 rawToken];
  [v6 appendData:v7];
}

+ (id)deserialize:(id)a3
{
  v3 = a3;
  if ([v3 length] <= 0xF4240)
  {
    v4 = objc_opt_new();
    v5 = 0;
    do
    {
      if (v5 >= [v3 length])
      {
        break;
      }

      v6 = [v3 bytes];
      v7 = *(v6 + v5);
      v8 = v5 + 1;
      if (*(v6 + v5))
      {
        if (v5 + v7 >= [v3 length])
        {
          break;
        }

        v9 = [v3 subdataWithRange:{v5 + 1, v7}];
        v10 = [[NIDiscoveryToken alloc] initWithBytes:v9];
        [v4 addObject:v10];
        v8 += v7;
      }

      v5 = v8;
    }

    while (v8 < 0xF4240);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NIDiscoveryToken)initWithDeviceAddress:(unsigned __int16)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v9 length:2];
  v5 = [[NIDiscoveryToken alloc] initWithBytes:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
    shortDeviceAddress = v5->_shortDeviceAddress;
    v5->_shortDeviceAddress = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  shortDeviceAddress = self->_shortDeviceAddress;
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = v5;
  if (shortDeviceAddress)
  {
    v7 = [(NSNumber *)self->_shortDeviceAddress intValue];

    return [v6 initWithDeviceAddress:v7];
  }

  else
  {
    rawToken = self->_rawToken;

    return [v5 initWithBytes:rawToken];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_rawToken forKey:@"rawToken"];
  [v4 encodeObject:self->_shortDeviceAddress forKey:@"shortDeviceAddress"];
}

- (NIDiscoveryToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawToken"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortDeviceAddress"];
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_10;
        }

        v7 = -[NIDiscoveryToken initWithDeviceAddress:](self, "initWithDeviceAddress:", [v6 intValue]);
      }

      else
      {
        v7 = [(NIDiscoveryToken *)self initWithBytes:v5];
      }

      self = v7;
      v8 = self;
LABEL_10:

      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4 == self || [(NSData *)self->_identifyingSequence isEqualToData:v4->_identifyingSequence];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end