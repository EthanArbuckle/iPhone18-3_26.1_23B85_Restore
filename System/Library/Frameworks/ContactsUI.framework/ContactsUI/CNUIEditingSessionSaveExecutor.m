@interface CNUIEditingSessionSaveExecutor
- (CNUIEditingSessionSaveExecutor)init;
- (CNUIEditingSessionSaveExecutor)initWithEditingSession:(id)a3;
- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4;
@end

@implementation CNUIEditingSessionSaveExecutor

- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v16 = self;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNUIEditingSessionSaveExecutor] %{public}p will execute save…", buf, 0xCu);
  }

  v7 = [(CNUIEditingSessionSaveExecutor *)self editingSession];
  v8 = [v5 mutableContact];
  v14 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v7 updateContacts:v9];

  v10 = [CNUIContactSaveResult alloc];
  v11 = [v5 mutableContact];

  v12 = [(CNUIContactSaveResult *)v10 initWithSuccess:1 contact:v11 identifiersOfIssuedSaveRequests:MEMORY[0x1E695E0F0]];

  return v12;
}

- (CNUIEditingSessionSaveExecutor)initWithEditingSession:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIEditingSessionSaveExecutor;
  v6 = [(CNUIEditingSessionSaveExecutor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingSession, a3);
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