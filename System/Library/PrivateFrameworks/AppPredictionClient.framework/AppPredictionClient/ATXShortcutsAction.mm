@interface ATXShortcutsAction
- (ATXActionCriteria)criteria;
- (ATXShortcutsAction)initWithCoder:(id)coder;
- (ATXShortcutsAction)initWithContextualAction:(id)action criteria:(id)criteria;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAction:(id)action;
- (CSSearchableItem)searchableItem;
- (id)contextualActionGetDirections;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  contextualAction = [(ATXShortcutsAction *)self contextualAction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contextualAction2 = [(ATXShortcutsAction *)self contextualAction];
  }

  else
  {
    contextualAction2 = 0;
  }

  return contextualAction2;
}

- (ATXShortcutsAction)initWithContextualAction:(id)action criteria:(id)criteria
{
  actionCopy = action;
  criteriaCopy = criteria;
  v14.receiver = self;
  v14.super_class = ATXShortcutsAction;
  v9 = [(ATXShortcutsAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextualAction, action);
    if (criteriaCopy)
    {
      v11 = criteriaCopy;
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
    spotlightItem = 0;
  }

  else
  {
    spotlightItem = [(WFContextualAction *)self->_contextualAction spotlightItem];
  }

  return spotlightItem;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  contextualAction = self->_contextualAction;
  coderCopy = coder;
  [coderCopy encodeObject:contextualAction forKey:@"KEY_CONTEXTUALACTION"];
  [coderCopy encodeObject:self->_criteria forKey:@"KEY_ACTION_CRITERIA"];
}

- (ATXShortcutsAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_CONTEXTUALACTION" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXShortcutsAction" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  selfCopy = 0;
  if (!error && v8)
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_ACTION_CRITERIA" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXShortcutsAction" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXShortcutsAction *)self initWithContextualAction:v8 criteria:v14];
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (unint64_t)hash
{
  displayString = [(WFContextualAction *)self->_contextualAction displayString];
  v4 = [displayString hash];

  uniqueIdentifier = [(WFContextualAction *)self->_contextualAction uniqueIdentifier];
  v6 = [uniqueIdentifier hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  displayString = [(WFContextualAction *)self->_contextualAction displayString];
  contextualAction = [actionCopy contextualAction];
  displayString2 = [contextualAction displayString];
  v8 = [displayString isEqual:displayString2];

  if (v8)
  {
    uniqueIdentifier = [(WFContextualAction *)self->_contextualAction uniqueIdentifier];
    contextualAction2 = [actionCopy contextualAction];
    uniqueIdentifier2 = [contextualAction2 uniqueIdentifier];
    v12 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end