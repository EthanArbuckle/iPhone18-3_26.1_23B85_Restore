@interface ACDataclassAction
+ (id)_actionForError:(id)a3;
+ (id)actionWithType:(int64_t)a3;
+ (id)destructiveActionWithType:(int64_t)a3;
+ (id)destructiveActionWithType:(int64_t)a3 affectedContainers:(id)a4;
- (ACDataclassAction)initWithCoder:(id)a3;
- (ACDataclassAction)initWithType:(int64_t)a3 destructivity:(BOOL)a4 affectedContainers:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)a3;
- (id)_initWithProtobufData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACDataclassAction

+ (id)actionWithType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3 destructivity:0 affectedContainers:0];

  return v3;
}

+ (id)destructiveActionWithType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3 destructivity:1 affectedContainers:0];

  return v3;
}

+ (id)destructiveActionWithType:(int64_t)a3 affectedContainers:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithType:a3 destructivity:1 affectedContainers:v6];

  return v7;
}

+ (id)_actionForError:(id)a3
{
  v3 = [[a1 alloc] initWithType:0 destructivity:1 affectedContainers:0];

  return v3;
}

- (ACDataclassAction)initWithType:(int64_t)a3 destructivity:(BOOL)a4 affectedContainers:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ACDataclassAction;
  v10 = [(ACDataclassAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_isDestructive = a4;
    objc_storeStrong(&v10->_affectedContainers, a5);
  }

  return v11;
}

- (ACDataclassAction)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ACDataclassAction;
  v5 = [(ACDataclassAction *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destructive"];
    v5->_isDestructive = [v7 BOOLValue];

    v8 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"affectedContainers"];
    affectedContainers = v5->_affectedContainers;
    v5->_affectedContainers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertReasonTitle"];
    undoAlertTitle = v5->_undoAlertTitle;
    v5->_undoAlertTitle = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertReasonMessage"];
    undoAlertMessage = v5->_undoAlertMessage;
    v5->_undoAlertMessage = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v8 encodeObject:v4 forKey:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDestructive];
  [v8 encodeObject:v5 forKey:@"destructive"];

  [v8 encodeObject:self->_affectedContainers forKey:@"affectedContainers"];
  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle)
  {
    [v8 encodeObject:undoAlertTitle forKey:@"alertReasonTitle"];
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage)
  {
    [v8 encodeObject:undoAlertMessage forKey:@"alertReasonMessage"];
  }
}

- (id)_initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(ACDataclassAction *)self init];
  if (v5)
  {
    v6 = v4;
    v5->_type = [v6 type];
    v5->_isDestructive = [v6 destructive];
    v7 = [v6 affectedContainers];
    v8 = [v7 copy];
    affectedContainers = v5->_affectedContainers;
    v5->_affectedContainers = v8;

    v10 = [v6 undoAlertTitle];
    v11 = [v10 copy];
    undoAlertTitle = v5->_undoAlertTitle;
    v5->_undoAlertTitle = v11;

    v13 = [v6 undoAlertMessage];

    v14 = [v13 copy];
    undoAlertMessage = v5->_undoAlertMessage;
    v5->_undoAlertMessage = v14;

    v16 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(ACDataclassAction *)a2 _initWithProtobufData:?];
  }

  if ([v5 length])
  {
    v6 = [[ACProtobufDataclassAction alloc] initWithData:v5];
    if (v6)
    {
      self = [(ACDataclassAction *)self _initWithProtobuf:v6];
      v7 = self;
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
  v2 = [(ACDataclassAction *)self _encodeProtobuf];
  v3 = [v2 data];

  return v3;
}

- (NSString)description
{
  v2 = [(ACDataclassAction *)self type];
  if (v2 > 8)
  {
    return @"Unknown ACDataclassAction";
  }

  else
  {
    return off_1E7977548[v2];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ACDataclassAction *)self type];
    v8 = 0;
    if (v6 == [v5 type])
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