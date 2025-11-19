@interface AVCSessionABTestConfiguration
+ (id)createWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionary;
@end

@implementation AVCSessionABTestConfiguration

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AVCSessionABTestConfiguration;
  v4 = [(AVCSessionABTestConfiguration *)&v9 description];
  v5 = "NO";
  if (self->_oneToOneAuthenticationTagEnabled)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (self->_gftTLEEnabled)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_p2pEncryptionEnabled)
  {
    v5 = "YES";
  }

  return [v3 stringWithFormat:@"{ %@ oneToOneAuthenticationTagEnabled=%s, gftTLEEnabled=%s, p2pEncryptionEnabled=%s }", v4, v6, v7, v5];
}

- (id)dictionary
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"vcSessionABTestOneOnOneAuthtagEnabled";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:self->_oneToOneAuthenticationTagEnabled];
  v4[1] = @"vcSessionABTestGftTLEEnabled";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_gftTLEEnabled];
  v4[2] = @"vcSessionABTestP2PEncryptionEnabled";
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:self->_p2pEncryptionEnabled];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setOneToOneAuthenticationTagEnabled:{-[AVCSessionABTestConfiguration isOneToOneAuthenticationTagEnabled](self, "isOneToOneAuthenticationTagEnabled")}];
  [v4 setGftTLEEnabled:{-[AVCSessionABTestConfiguration isGftTLEEnabled](self, "isGftTLEEnabled")}];
  [v4 setP2pEncryptionEnabled:{-[AVCSessionABTestConfiguration isP2PEncryptionEnabled](self, "isP2PEncryptionEnabled")}];
  return v4;
}

+ (id)createWithDictionary:(id)a3
{
  v4 = objc_alloc_init(AVCSessionABTestConfiguration);
  if (a3)
  {
    -[AVCSessionABTestConfiguration setOneToOneAuthenticationTagEnabled:](v4, "setOneToOneAuthenticationTagEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionABTestOneOnOneAuthtagEnabled", "BOOLValue"}]);
    -[AVCSessionABTestConfiguration setGftTLEEnabled:](v4, "setGftTLEEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionABTestGftTLEEnabled", "BOOLValue"}]);
    -[AVCSessionABTestConfiguration setP2pEncryptionEnabled:](v4, "setP2pEncryptionEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionABTestP2PEncryptionEnabled", "BOOLValue"}]);
  }

  return v4;
}

@end