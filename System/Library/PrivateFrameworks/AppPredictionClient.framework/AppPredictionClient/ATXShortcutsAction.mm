@interface ATXShortcutsAction
- (ATXActionCriteria)criteria;
- (ATXShortcutsAction)initWithCoder:(id)a3;
- (ATXShortcutsAction)initWithContextualAction:(id)a3 criteria:(id)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (CSSearchableItem)searchableItem;
- (id)contextualActionGetDirections;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXShortcutsAction

- (ATXActionCriteria)criteria
{
  criteria = self->_criteria;
  if (criteria)
  {
    v3 = criteria;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)contextualActionGetDirections
{
  v3 = [(ATXShortcutsAction *)self contextualAction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ATXShortcutsAction *)self contextualAction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ATXShortcutsAction)initWithContextualAction:(id)a3 criteria:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXShortcutsAction;
  v9 = [(ATXShortcutsAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextualAction, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = objc_opt_new();
    }

    criteria = v10->_criteria;
    v10->_criteria = v11;
  }

  return v10;
}

- (CSSearchableItem)searchableItem
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = 0;
  }

  else
  {
    v3 = [(WFContextualAction *)self->_contextualAction spotlightItem];
  }

  return v3;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  contextualAction = self->_contextualAction;
  v5 = a3;
  [v5 encodeObject:contextualAction forKey:@"KEY_CONTEXTUALACTION"];
  [v5 encodeObject:self->_criteria forKey:@"KEY_ACTION_CRITERIA"];
}

- (ATXShortcutsAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_CONTEXTUALACTION" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXShortcutsAction" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  v10 = 0;
  if (!v9 && v8)
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_ACTION_CRITERIA" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXShortcutsAction" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      self = [(ATXShortcutsAction *)self initWithContextualAction:v8 criteria:v14];
      v10 = self;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WFContextualAction *)self->_contextualAction displayString];
  v4 = [v3 hash];

  v5 = [(WFContextualAction *)self->_contextualAction uniqueIdentifier];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualAction *)self->_contextualAction displayString];
  v6 = [v4 contextualAction];
  v7 = [v6 displayString];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [(WFContextualAction *)self->_contextualAction uniqueIdentifier];
    v10 = [v4 contextualAction];
    v11 = [v10 uniqueIdentifier];
    v12 = [v9 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end