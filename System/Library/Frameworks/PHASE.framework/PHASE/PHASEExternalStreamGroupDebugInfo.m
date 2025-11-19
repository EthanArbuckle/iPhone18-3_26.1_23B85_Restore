@interface PHASEExternalStreamGroupDebugInfo
- (BOOL)isEqual:(id)a3;
- (PHASEExternalStreamGroupDebugInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setStreams:(id)a3;
@end

@implementation PHASEExternalStreamGroupDebugInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PHASEExternalStreamGroupDebugInfo *)self isControlled];
  if (v5 == [v4 isControlled] && (v6 = -[PHASEExternalStreamGroupDebugInfo isControllerPaused](self, "isControllerPaused"), v6 == objc_msgSend(v4, "isControllerPaused")))
  {
    v8 = [(PHASEExternalStreamGroupDebugInfo *)self streams];
    v9 = [v4 streams];
    v7 = [v8 isEqualToDictionary:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_controlled forKey:@"controlled"];
  [v4 encodeBool:self->_controllerPaused forKey:@"controllerPaused"];
  [v4 encodeObject:self->_streams forKey:@"streams"];
}

- (PHASEExternalStreamGroupDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PHASEExternalStreamGroupDebugInfo;
  v5 = [(PHASEExternalStreamGroupDebugInfo *)&v14 init];
  if (v5)
  {
    v5->_controlled = [v4 decodeBoolForKey:@"controlled"];
    v5->_controllerPaused = [v4 decodeBoolForKey:@"controllerPaused"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"streams"];
    streams = v5->_streams;
    v5->_streams = v11;
  }

  return v5;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<PHASEExternalStreamGroupDebugInfo:%p, isControlled=%d, isControllerPaused=%d, streams:", self, self->_controlled, self->_controllerPaused];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_streams;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_streams objectForKey:v8];
        [v3 appendFormat:@"\r%@ : %@", v8, v9];
      }

      v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)setStreams:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  streams = self->_streams;
  self->_streams = v4;
}

@end