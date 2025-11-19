@interface WFEvernoteTag
+ (void)initialize;
- (WFEvernoteTag)initWithCoder:(id)a3;
- (WFEvernoteTag)initWithGUID:(id)a3 name:(id)a4 parentGuid:(id)a5 updateSequenceNum:(id)a6;
- (WFEvernoteTag)initWithTag:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEvernoteTag

- (WFEvernoteTag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentGuid"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateSequenceNum"];

  v9 = [(WFEvernoteTag *)self initWithGUID:v5 name:v6 parentGuid:v7 updateSequenceNum:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEvernoteTag *)self guid];
  [v4 encodeObject:v5 forKey:@"guid"];

  v6 = [(WFEvernoteTag *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(WFEvernoteTag *)self parentGuid];
  [v4 encodeObject:v7 forKey:@"parentGuid"];

  v8 = [(WFEvernoteTag *)self updateSequenceNum];
  [v4 encodeObject:v8 forKey:@"updateSequenceNum"];
}

- (WFEvernoteTag)initWithTag:(id)a3
{
  v4 = a3;
  v5 = [v4 guid];
  v6 = [v4 name];
  v7 = [v4 parentGuid];
  v8 = [v4 updateSequenceNum];

  v9 = [(WFEvernoteTag *)self initWithGUID:v5 name:v6 parentGuid:v7 updateSequenceNum:v8];
  return v9;
}

- (WFEvernoteTag)initWithGUID:(id)a3 name:(id)a4 parentGuid:(id)a5 updateSequenceNum:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = WFEvernoteTag;
  v14 = [(WFEvernoteTag *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    guid = v14->_guid;
    v14->_guid = v15;

    v17 = [v11 copy];
    name = v14->_name;
    v14->_name = v17;

    v19 = [v12 copy];
    parentGuid = v14->_parentGuid;
    v14->_parentGuid = v19;

    v21 = [v13 copy];
    updateSequenceNum = v14->_updateSequenceNum;
    v14->_updateSequenceNum = v21;

    v23 = v14;
  }

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v5 = +[WFDiskCache workflowCache];
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [v5 setClass:v2 forCachedClassName:v4];
  }
}

@end