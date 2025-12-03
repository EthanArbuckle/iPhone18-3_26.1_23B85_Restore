@interface WFEvernoteTag
+ (void)initialize;
- (WFEvernoteTag)initWithCoder:(id)coder;
- (WFEvernoteTag)initWithGUID:(id)d name:(id)name parentGuid:(id)guid updateSequenceNum:(id)num;
- (WFEvernoteTag)initWithTag:(id)tag;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFEvernoteTag

- (WFEvernoteTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentGuid"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateSequenceNum"];

  v9 = [(WFEvernoteTag *)self initWithGUID:v5 name:v6 parentGuid:v7 updateSequenceNum:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  guid = [(WFEvernoteTag *)self guid];
  [coderCopy encodeObject:guid forKey:@"guid"];

  name = [(WFEvernoteTag *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  parentGuid = [(WFEvernoteTag *)self parentGuid];
  [coderCopy encodeObject:parentGuid forKey:@"parentGuid"];

  updateSequenceNum = [(WFEvernoteTag *)self updateSequenceNum];
  [coderCopy encodeObject:updateSequenceNum forKey:@"updateSequenceNum"];
}

- (WFEvernoteTag)initWithTag:(id)tag
{
  tagCopy = tag;
  guid = [tagCopy guid];
  name = [tagCopy name];
  parentGuid = [tagCopy parentGuid];
  updateSequenceNum = [tagCopy updateSequenceNum];

  v9 = [(WFEvernoteTag *)self initWithGUID:guid name:name parentGuid:parentGuid updateSequenceNum:updateSequenceNum];
  return v9;
}

- (WFEvernoteTag)initWithGUID:(id)d name:(id)name parentGuid:(id)guid updateSequenceNum:(id)num
{
  dCopy = d;
  nameCopy = name;
  guidCopy = guid;
  numCopy = num;
  v25.receiver = self;
  v25.super_class = WFEvernoteTag;
  v14 = [(WFEvernoteTag *)&v25 init];
  if (v14)
  {
    v15 = [dCopy copy];
    guid = v14->_guid;
    v14->_guid = v15;

    v17 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v17;

    v19 = [guidCopy copy];
    parentGuid = v14->_parentGuid;
    v14->_parentGuid = v19;

    v21 = [numCopy copy];
    updateSequenceNum = v14->_updateSequenceNum;
    v14->_updateSequenceNum = v21;

    v23 = v14;
  }

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v5 = +[WFDiskCache workflowCache];
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [v5 setClass:v2 forCachedClassName:v4];
  }
}

@end