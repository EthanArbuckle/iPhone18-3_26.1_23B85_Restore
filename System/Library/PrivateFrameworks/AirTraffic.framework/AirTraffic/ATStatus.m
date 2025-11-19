@interface ATStatus
- (ATStatus)initWithCoder:(id)a3;
- (ATStatus)initWithLibraryID:(id)a3 dataClass:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATStatus

- (void)encodeWithCoder:(id)a3
{
  dataClass = self->_dataClass;
  v6 = a3;
  [v6 encodeObject:dataClass forKey:@"dataClass"];
  [v6 encodeObject:self->_libraryID forKey:@"libraryID"];
  [v6 encodeInteger:self->_syncStage forKey:@"syncStage"];
  [v6 encodeInteger:self->_syncType forKey:@"syncType"];
  *&v5 = self->_progress;
  [v6 encodeFloat:@"progress" forKey:v5];
  [v6 encodeInteger:self->_totalAssetCount forKey:@"totalAssetCount"];
  [v6 encodeInteger:self->_totalItemCount forKey:@"totalItemCount"];
  [v6 encodeInteger:self->_completedAssetCount forKey:@"completedAssetCount"];
  [v6 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
}

- (ATStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ATStatus;
  v5 = [(ATStatus *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryID"];
    libraryID = v5->_libraryID;
    v5->_libraryID = v8;

    v5->_syncStage = [v4 decodeIntegerForKey:@"syncStage"];
    v5->_syncType = [v4 decodeIntegerForKey:@"syncType"];
    [v4 decodeFloatForKey:@"progress"];
    v5->_progress = v10;
    v5->_totalAssetCount = [v4 decodeIntegerForKey:@"totalAssetCount"];
    v5->_totalItemCount = [v4 decodeIntegerForKey:@"totalItemCount"];
    v5->_completedAssetCount = [v4 decodeIntegerForKey:@"completedAssetCount"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v11;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  libraryID = self->_libraryID;
  if (libraryID)
  {
    [v3 setObject:libraryID forKeyedSubscript:@"libraryID"];
  }

  dataClass = self->_dataClass;
  if (dataClass)
  {
    [v4 setObject:dataClass forKeyedSubscript:@"dataClass"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncStage];
  [v4 setObject:v7 forKeyedSubscript:@"syncStage"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_syncType];
  [v4 setObject:v8 forKeyedSubscript:@"syncType"];

  *&v9 = self->_progress;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v4 setObject:v10 forKeyedSubscript:@"progress"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalAssetCount];
  [v4 setObject:v11 forKeyedSubscript:@"totalAssetCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalItemCount];
  [v4 setObject:v12 forKeyedSubscript:@"totalItemCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_completedAssetCount];
  [v4 setObject:v13 forKeyedSubscript:@"completedAssetCount"];

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKeyedSubscript:@"localizedDescription"];
  }

  v15 = [v4 description];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dataClass];
    if ([v5 isEqualToString:self->_dataClass])
    {
      v6 = [v4 libraryID];
      v7 = [v6 isEqualToString:self->_libraryID];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ATStatus)initWithLibraryID:(id)a3 dataClass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATStatus;
  v9 = [(ATStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryID, a3);
    objc_storeStrong(&v10->_dataClass, a4);
  }

  return v10;
}

@end