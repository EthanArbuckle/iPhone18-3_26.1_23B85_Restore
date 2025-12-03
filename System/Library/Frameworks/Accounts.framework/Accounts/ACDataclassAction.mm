@interface ACDataclassAction
+ (id)_actionForError:(id)error;
+ (id)actionWithType:(int64_t)type;
+ (id)destructiveActionWithType:(int64_t)type;
+ (id)destructiveActionWithType:(int64_t)type affectedContainers:(id)containers;
- (ACDataclassAction)initWithCoder:(id)coder;
- (ACDataclassAction)initWithType:(int64_t)type destructivity:(BOOL)destructivity affectedContainers:(id)containers;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)protobuf;
- (id)_initWithProtobufData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACDataclassAction

+ (id)actionWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type destructivity:0 affectedContainers:0];

  return v3;
}

+ (id)destructiveActionWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type destructivity:1 affectedContainers:0];

  return v3;
}

+ (id)destructiveActionWithType:(int64_t)type affectedContainers:(id)containers
{
  containersCopy = containers;
  v7 = [[self alloc] initWithType:type destructivity:1 affectedContainers:containersCopy];

  return v7;
}

+ (id)_actionForError:(id)error
{
  v3 = [[self alloc] initWithType:0 destructivity:1 affectedContainers:0];

  return v3;
}

- (ACDataclassAction)initWithType:(int64_t)type destructivity:(BOOL)destructivity affectedContainers:(id)containers
{
  containersCopy = containers;
  v13.receiver = self;
  v13.super_class = ACDataclassAction;
  v10 = [(ACDataclassAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_isDestructive = destructivity;
    objc_storeStrong(&v10->_affectedContainers, containers);
  }

  return v11;
}

- (ACDataclassAction)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ACDataclassAction;
  v5 = [(ACDataclassAction *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destructive"];
    v5->_isDestructive = [v7 BOOLValue];

    v8 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"affectedContainers"];
    affectedContainers = v5->_affectedContainers;
    v5->_affectedContainers = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertReasonTitle"];
    undoAlertTitle = v5->_undoAlertTitle;
    v5->_undoAlertTitle = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertReasonMessage"];
    undoAlertMessage = v5->_undoAlertMessage;
    v5->_undoAlertMessage = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDestructive];
  [coderCopy encodeObject:v5 forKey:@"destructive"];

  [coderCopy encodeObject:self->_affectedContainers forKey:@"affectedContainers"];
  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle)
  {
    [coderCopy encodeObject:undoAlertTitle forKey:@"alertReasonTitle"];
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage)
  {
    [coderCopy encodeObject:undoAlertMessage forKey:@"alertReasonMessage"];
  }
}

- (id)_initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(ACDataclassAction *)self init];
  if (v5)
  {
    v6 = protobufCopy;
    v5->_type = [v6 type];
    v5->_isDestructive = [v6 destructive];
    affectedContainers = [v6 affectedContainers];
    v8 = [affectedContainers copy];
    affectedContainers = v5->_affectedContainers;
    v5->_affectedContainers = v8;

    undoAlertTitle = [v6 undoAlertTitle];
    v11 = [undoAlertTitle copy];
    undoAlertTitle = v5->_undoAlertTitle;
    v5->_undoAlertTitle = v11;

    undoAlertMessage = [v6 undoAlertMessage];

    v14 = [undoAlertMessage copy];
    undoAlertMessage = v5->_undoAlertMessage;
    v5->_undoAlertMessage = v14;

    v16 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    [(ACDataclassAction *)a2 _initWithProtobufData:?];
  }

  if ([dataCopy length])
  {
    v6 = [[ACProtobufDataclassAction alloc] initWithData:dataCopy];
    if (v6)
    {
      self = [(ACDataclassAction *)self _initWithProtobuf:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_encodeProtobuf
{
  v3 = objc_opt_new();
  [v3 setType:LODWORD(self->_type)];
  [v3 setDestructive:self->_isDestructive];
  v4 = [(NSArray *)self->_affectedContainers mutableCopy];
  [v3 setAffectedContainers:v4];

  v5 = [(NSString *)self->_undoAlertTitle copy];
  [v3 setUndoAlertTitle:v5];

  v6 = [(NSString *)self->_undoAlertMessage copy];
  [v3 setUndoAlertMessage:v6];

  return v3;
}

- (id)_encodeProtobufData
{
  _encodeProtobuf = [(ACDataclassAction *)self _encodeProtobuf];
  data = [_encodeProtobuf data];

  return data;
}

- (NSString)description
{
  type = [(ACDataclassAction *)self type];
  if (type > 8)
  {
    return @"Unknown ACDataclassAction";
  }

  else
  {
    return off_1E7977548[type];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(ACDataclassAction *)self type];
    v8 = 0;
    if (type == [v5 type])
    {
      affectedContainers = self->_affectedContainers;
      if (affectedContainers == v5[3] || [(NSArray *)affectedContainers isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_initWithProtobufData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACDataclassAction.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"data.length != 0"}];
}

@end