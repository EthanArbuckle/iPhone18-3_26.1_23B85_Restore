@interface _INPBCreateTaskListIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateTaskListIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateTaskListIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  createdTaskList = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];
  dictionaryRepresentation = [createdTaskList dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdTaskList"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    createdTaskList = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];
    createdTaskList2 = [equalCopy createdTaskList];
    v7 = createdTaskList2;
    if ((createdTaskList != 0) != (createdTaskList2 == 0))
    {
      createdTaskList3 = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];
      if (!createdTaskList3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = createdTaskList3;
      createdTaskList4 = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];
      createdTaskList5 = [equalCopy createdTaskList];
      v12 = [createdTaskList4 isEqual:createdTaskList5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateTaskListIntentResponse allocWithZone:](_INPBCreateTaskListIntentResponse init];
  v6 = [(_INPBTaskList *)self->_createdTaskList copyWithZone:zone];
  [(_INPBCreateTaskListIntentResponse *)v5 setCreatedTaskList:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateTaskListIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateTaskListIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateTaskListIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  createdTaskList = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];

  if (createdTaskList)
  {
    createdTaskList2 = [(_INPBCreateTaskListIntentResponse *)self createdTaskList];
    PBDataWriterWriteSubmessage();
  }
}

@end