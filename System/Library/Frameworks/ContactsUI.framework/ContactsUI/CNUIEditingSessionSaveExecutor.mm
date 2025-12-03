@interface CNUIEditingSessionSaveExecutor
- (CNUIEditingSessionSaveExecutor)init;
- (CNUIEditingSessionSaveExecutor)initWithEditingSession:(id)session;
- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate;
@end

@implementation CNUIEditingSessionSaveExecutor

- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNUIEditingSessionSaveExecutor] %{public}p will execute save…", buf, 0xCu);
  }

  editingSession = [(CNUIEditingSessionSaveExecutor *)self editingSession];
  mutableContact = [configurationCopy mutableContact];
  v14 = mutableContact;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [editingSession updateContacts:v9];

  v10 = [CNUIContactSaveResult alloc];
  mutableContact2 = [configurationCopy mutableContact];

  v12 = [(CNUIContactSaveResult *)v10 initWithSuccess:1 contact:mutableContact2 identifiersOfIssuedSaveRequests:MEMORY[0x1E695E0F0]];

  return v12;
}

- (CNUIEditingSessionSaveExecutor)initWithEditingSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = CNUIEditingSessionSaveExecutor;
  v6 = [(CNUIEditingSessionSaveExecutor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingSession, session);
    v8 = v7;
  }

  return v7;
}

- (CNUIEditingSessionSaveExecutor)init
{
  v3 = objc_alloc_init(MEMORY[0x1E6996AF8]);
  v4 = [(CNUIEditingSessionSaveExecutor *)self initWithEditingSession:v3];

  return v4;
}

@end