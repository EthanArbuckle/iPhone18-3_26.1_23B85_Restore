uint64_t sub_29E9FA964(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = a3;
  ASLoggingInitialize();
  v9 = *MEMORY[0x29EDBE0D0];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = a4;
    _os_log_impl(&dword_29E9F9000, v9, OS_LOG_TYPE_DEFAULT, "Running Activity Sharing migration from %ld, creating tables", buf, 0xCu);
  }

  v10 = [v8 protectedDatabase];

  v11 = *MEMORY[0x29EDBE0F0];
  v12 = *MEMORY[0x29EDBE168];
  v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@_%@                      (%@ INTEGER PRIMARY KEY AUTOINCREMENT, %@ BLOB, %@ BLOB, %@ INTEGER, %@ INTEGER, %@ INTEGER, %@ BLOB, %@ BLOB, %@ BLOB, %@ BLOB, UNIQUE(%@, %@))", *MEMORY[0x29EDBE0F0], *MEMORY[0x29EDBE0E8], *MEMORY[0x29EDC16B0], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100], *MEMORY[0x29EDBE170], *MEMORY[0x29EDBE108], *MEMORY[0x29EDBE120], *MEMORY[0x29EDBE160], *MEMORY[0x29EDBE150], *MEMORY[0x29EDBE168], *MEMORY[0x29EDBE110], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100]];
  v14 = [v10 executeSQL:v13 error:a5 bindingHandler:0 enumerationHandler:0];
  v15 = [*(a1 + 32) _createTableSQLStringForCompetitionLists];
  v16 = [v10 executeSQL:v15 error:a5 bindingHandler:0 enumerationHandler:0];

  v17 = *MEMORY[0x29EDCA608];
  return v14 & v16 ^ 1u;
}

uint64_t sub_29E9FAB64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = a3;
  ASLoggingInitialize();
  v9 = *MEMORY[0x29EDBE0D0];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a4;
    _os_log_impl(&dword_29E9F9000, v9, OS_LOG_TYPE_DEFAULT, "Running Activity Sharing migration from %ld, dropping competitions table and re-creating with badge styles", buf, 0xCu);
  }

  v10 = [v8 protectedDatabase];

  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@_%@                      (%@ INTEGER PRIMARY KEY AUTOINCREMENT, %@ BLOB, %@ BLOB, %@ INTEGER, %@ INTEGER, %@ INTEGER, %@ BLOB, %@ BLOB, %@ BLOB, %@ BLOB, %@ BLOB, UNIQUE(%@, %@))", *MEMORY[0x29EDBE0F0], *MEMORY[0x29EDBE0E8], *MEMORY[0x29EDC16B0], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100], *MEMORY[0x29EDBE170], *MEMORY[0x29EDBE108], *MEMORY[0x29EDBE120], *MEMORY[0x29EDBE160], *MEMORY[0x29EDBE150], *MEMORY[0x29EDBE168], *MEMORY[0x29EDBE110], *MEMORY[0x29EDBE158], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100]];
  v12 = [*(a1 + 32) _dropTableSQLStringForCompetitions];
  v13 = [v10 executeSQL:v12 error:a5 bindingHandler:0 enumerationHandler:0];

  v14 = [v10 executeSQL:v11 error:a5 bindingHandler:0 enumerationHandler:0];
  v15 = *MEMORY[0x29EDCA608];
  return v13 & v14 ^ 1u;
}

uint64_t sub_29E9FAD74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = a3;
  ASLoggingInitialize();
  v9 = *MEMORY[0x29EDBE0D0];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = a4;
    _os_log_impl(&dword_29E9F9000, v9, OS_LOG_TYPE_DEFAULT, "Running Activity Sharing migration from %ld, dropping competition lists table and re-creating with owner", &v17, 0xCu);
  }

  v10 = [v8 protectedDatabase];

  v11 = [*(a1 + 32) _dropTableSQLStringForCompetitionLists];
  v12 = [v10 executeSQL:v11 error:a5 bindingHandler:0 enumerationHandler:0];

  v13 = [*(a1 + 32) _createTableSQLStringForCompetitionLists];
  v14 = [v10 executeSQL:v13 error:a5 bindingHandler:0 enumerationHandler:0];

  v15 = *MEMORY[0x29EDCA608];
  return v12 & v14 ^ 1u;
}

uint64_t sub_29E9FAEBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = a3;
  ASLoggingInitialize();
  v8 = *MEMORY[0x29EDBE0D0];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a4;
    _os_log_impl(&dword_29E9F9000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Sharing migration from %ld, migrating competitions table to fixup unique constraint", buf, 0xCu);
  }

  v9 = [v7 protectedDatabase];

  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@_%@                      (%@ INTEGER PRIMARY KEY AUTOINCREMENT, %@ BLOB, %@ BLOB, %@ INTEGER, %@ INTEGER, %@ INTEGER, %@ BLOB, %@ BLOB, %@ BLOB, %@ BLOB, %@ BLOB, UNIQUE(%@, %@))", *MEMORY[0x29EDBE0F0], *MEMORY[0x29EDBE0E8], *MEMORY[0x29EDC16B0], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100], *MEMORY[0x29EDBE170], *MEMORY[0x29EDBE108], *MEMORY[0x29EDBE120], *MEMORY[0x29EDBE160], *MEMORY[0x29EDBE150], *MEMORY[0x29EDBE168], *MEMORY[0x29EDBE110], *MEMORY[0x29EDBE158], *MEMORY[0x29EDBE118], *MEMORY[0x29EDBE100]];
  v11 = [v9 executeSQL:@"ALTER TABLE activitysharing_competitions RENAME TO activitysharing_competitions_old" error:a5 bindingHandler:0 enumerationHandler:0];
  v12 = [v9 executeSQL:v10 error:a5 bindingHandler:0 enumerationHandler:0];
  v13 = [v9 executeSQL:@"INSERT INTO activitysharing_competitions SELECT * FROM activitysharing_competitions_old" error:a5 bindingHandler:0 enumerationHandler:0];
  v14 = [v9 executeSQL:@"DROP TABLE activitysharing_competitions_old" error:a5 bindingHandler:0 enumerationHandler:0];

  v15 = *MEMORY[0x29EDCA608];
  return v11 & v13 & v14 & v12 ^ 1u;
}

uint64_t sub_29E9FB100(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3;
  ASLoggingInitialize();
  v8 = *MEMORY[0x29EDBE0D0];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a4;
    _os_log_impl(&dword_29E9F9000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Sharing migration from %ld, migrating competitions table to add score cap", buf, 0xCu);
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"ALTER TABLE activitysharing_competitions ADD COLUMN %@ INTEGER", *MEMORY[0x29EDBE148]];
  v10 = [v7 protectedDatabase];

  v11 = [v10 executeSQL:v9 error:a5 bindingHandler:0 enumerationHandler:0];
  v12 = *MEMORY[0x29EDCA608];
  return v11 ^ 1u;
}