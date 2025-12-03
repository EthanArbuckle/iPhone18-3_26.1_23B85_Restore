@interface ATXHeuristicActionMakerForAction
- (ATXHeuristicActionMakerForAction)initWithAction:(id)action;
- (ATXHeuristicActionMakerForAction)initWithCoder:(id)coder;
- (id)actionTypeName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicActionMakerForAction

- (ATXHeuristicActionMakerForAction)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = ATXHeuristicActionMakerForAction;
  v6 = [(ATXHeuristicActionMakerForAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
  }

  return v7;
}

- (id)actionTypeName
{
  intent = [(ATXAction *)self->_action intent];
  _className = [intent _className];
  v5 = _className;
  if (_className)
  {
    v6 = _className;
  }

  else
  {
    userActivity = [(ATXAction *)self->_action userActivity];
    activityType = [userActivity activityType];
    v9 = activityType;
    v10 = @"unknown";
    if (activityType)
    {
      v10 = activityType;
    }

    v6 = v10;
  }

  return v6;
}

- (ATXHeuristicActionMakerForAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ATXHeuristicActionMakerForAction;
  v5 = [(ATXHeuristicActionMaker *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    if (!v5->_action)
    {
      v8 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXHeuristicActionMakerForAction *)v8 initWithCoder:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicActionMakerForAction;
  coderCopy = coder;
  [(ATXHeuristicActionMaker *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_action forKey:{@"action", v5.receiver, v5.super_class}];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<Lazy: %@>", self->_action];

  return v2;
}

@end