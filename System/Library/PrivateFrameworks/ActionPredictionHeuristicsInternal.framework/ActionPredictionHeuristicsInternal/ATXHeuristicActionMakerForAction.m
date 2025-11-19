@interface ATXHeuristicActionMakerForAction
- (ATXHeuristicActionMakerForAction)initWithAction:(id)a3;
- (ATXHeuristicActionMakerForAction)initWithCoder:(id)a3;
- (id)actionTypeName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicActionMakerForAction

- (ATXHeuristicActionMakerForAction)initWithAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicActionMakerForAction;
  v6 = [(ATXHeuristicActionMakerForAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

- (id)actionTypeName
{
  v3 = [(ATXAction *)self->_action intent];
  v4 = [v3 _className];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(ATXAction *)self->_action userActivity];
    v8 = [v7 activityType];
    v9 = v8;
    v10 = @"unknown";
    if (v8)
    {
      v10 = v8;
    }

    v6 = v10;
  }

  return v6;
}

- (ATXHeuristicActionMakerForAction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ATXHeuristicActionMakerForAction;
  v5 = [(ATXHeuristicActionMaker *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicActionMakerForAction;
  v4 = a3;
  [(ATXHeuristicActionMaker *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_action forKey:{@"action", v5.receiver, v5.super_class}];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<Lazy: %@>", self->_action];

  return v2;
}

@end