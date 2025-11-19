@interface _PASSqliteDatabase(ATXExtras)
- (uint64_t)atx_countRowsOfTable:()ATXExtras returnValueOnError:;
@end

@implementation _PASSqliteDatabase(ATXExtras)

- (uint64_t)atx_countRowsOfTable:()ATXExtras returnValueOnError:
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT count(*) FROM %@", v6];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73___PASSqliteDatabase_ATXExtras__atx_countRowsOfTable_returnValueOnError___block_invoke;
  v11[3] = &unk_278598790;
  v11[4] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73___PASSqliteDatabase_ATXExtras__atx_countRowsOfTable_returnValueOnError___block_invoke_2;
  v10[3] = &unk_278598808;
  v10[4] = &v12;
  v10[5] = a4;
  [a1 prepAndRunQuery:v7 onPrep:0 onRow:v11 onError:v10];
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

@end