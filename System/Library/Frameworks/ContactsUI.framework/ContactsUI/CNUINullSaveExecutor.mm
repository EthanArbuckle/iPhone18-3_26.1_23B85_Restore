@interface CNUINullSaveExecutor
- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate;
@end

@implementation CNUINullSaveExecutor

- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNUINullSaveExecutor] %{public}p will execute save…", &v11, 0xCu);
  }

  v7 = [CNUIContactSaveResult alloc];
  mutableContact = [configurationCopy mutableContact];

  v9 = [(CNUIContactSaveResult *)v7 initWithSuccess:1 contact:mutableContact identifiersOfIssuedSaveRequests:MEMORY[0x1E695E0F0]];

  return v9;
}

@end