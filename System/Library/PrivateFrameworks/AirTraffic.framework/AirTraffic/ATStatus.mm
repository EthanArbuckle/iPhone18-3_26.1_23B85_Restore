@interface ATStatus
- (ATStatus)initWithCoder:(id)coder;
- (ATStatus)initWithLibraryID:(id)d dataClass:(id)class;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATStatus

- (void)encodeWithCoder:(id)coder
{
  dataClass = self->_dataClass;
  coderCopy = coder;
  [coderCopy encodeObject:dataClass forKey:@"dataClass"];
  [coderCopy encodeObject:self->_libraryID forKey:@"libraryID"];
  [coderCopy encodeInteger:self->_syncStage forKey:@"syncStage"];
  [coderCopy encodeInteger:self->_syncType forKey:@"syncType"];
  *&v5 = self->_progress;
  [coderCopy encodeFloat:@"progress" forKey:v5];
  [coderCopy encodeInteger:self->_totalAssetCount forKey:@"totalAssetCount"];
  [coderCopy encodeInteger:self->_totalItemCount forKey:@"totalItemCount"];
  [coderCopy encodeInteger:self->_completedAssetCount forKey:@"completedAssetCount"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
}

- (ATStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ATStatus;
  v5 = [(ATStatus *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryID"];
    libraryID = v5->_libraryID;
    v5->_libraryID = v8;

    v5->_syncStage = [coderCopy decodeIntegerForKey:@"syncStage"];
    v5->_syncType = [coderCopy decodeIntegerForKey:@"syncType"];
    [coderCopy decodeFloatForKey:@"progress"];
    v5->_progress = v10;
    v5->_totalAssetCount = [coderCopy decodeIntegerForKey:@"totalAssetCount"];
    v5->_totalItemCount = [coderCopy decodeIntegerForKey:@"totalItemCount"];
    v5->_completedAssetCount = [coderCopy decodeIntegerForKey:@"completedAssetCount"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataClass = [equalCopy dataClass];
    if ([dataClass isEqualToString:self->_dataClass])
    {
      libraryID = [equalCopy libraryID];
      v7 = [libraryID isEqualToString:self->_libraryID];
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

- (ATStatus)initWithLibraryID:(id)d dataClass:(id)class
{
  dCopy = d;
  classCopy = class;
  v12.receiver = self;
  v12.super_class = ATStatus;
  v9 = [(ATStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryID, d);
    objc_storeStrong(&v10->_dataClass, class);
  }

  return v10;
}

@end