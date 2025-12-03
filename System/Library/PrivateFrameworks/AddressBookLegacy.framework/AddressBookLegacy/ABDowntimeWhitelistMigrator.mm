@interface ABDowntimeWhitelistMigrator
+ (BOOL)moveDowntimeWhitelistFromUnknownProperties:(CPSqliteConnection *)properties;
+ (id)externalRepresentationFromUnknownProperties:(id)properties;
+ (id)unknownPropertiesFromExternalRepresentation:(id)representation;
@end

@implementation ABDowntimeWhitelistMigrator

+ (BOOL)moveDowntimeWhitelistFromUnknownProperties:(CPSqliteConnection *)properties
{
  v3 = CPSqliteConnectionStatementForSQL();
  if (v3)
  {
    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
    CPSqliteDatabaseReleaseSqliteStatement();
  }

  return v3 != 0;
}

+ (id)unknownPropertiesFromExternalRepresentation:(id)representation
{
  v14[4] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (representationCopy)
  {
    v13 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:representationCopy error:&v13];
    v5 = v13;
    if (v4)
    {
      v14[0] = objc_opt_class();
      v14[1] = objc_opt_class();
      v14[2] = objc_opt_class();
      v14[3] = objc_opt_class();
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
      v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x1E696A508]];

      [v4 finishDecoding];
    }

    else
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "+[ABDowntimeWhitelistMigrator unknownPropertiesFromExternalRepresentation:]", 69, 0, @"Error trying to decode externalRepresentation: %@", v9, v10, v11, v5);
      v8 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

+ (id)externalRepresentationFromUnknownProperties:(id)properties
{
  propertiesCopy = properties;
  data = [MEMORY[0x1E695DEF0] data];
  if ([propertiesCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 setOutputFormat:200];
    [v5 encodeObject:propertiesCopy forKey:*MEMORY[0x1E696A508]];
    [v5 finishEncoding];
    encodedData = [v5 encodedData];

    data = encodedData;
  }

  return data;
}

@end