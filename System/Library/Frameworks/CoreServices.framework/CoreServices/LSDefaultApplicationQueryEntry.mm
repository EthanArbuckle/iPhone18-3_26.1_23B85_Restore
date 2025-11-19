@interface LSDefaultApplicationQueryEntry
+ (id)createFromPlistRepresentation:(id)a3;
- (LSDefaultApplicationQueryEntry)initWithWindowOpenDates:(id)a3 refreshDate:(id)a4 defaultForCategory:(BOOL)a5;
- (id)newestWindowOpenDate;
- (id)oldestWindowOpenDate;
- (id)plistRepresentation;
@end

@implementation LSDefaultApplicationQueryEntry

- (LSDefaultApplicationQueryEntry)initWithWindowOpenDates:(id)a3 refreshDate:(id)a4 defaultForCategory:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = LSDefaultApplicationQueryEntry;
  v10 = [(LSDefaultApplicationQueryEntry *)&v14 init];
  if (v10)
  {
    v11 = [v8 sortedArrayUsingSelector:sel_compare_];
    windowOpenDates = v10->_windowOpenDates;
    v10->_windowOpenDates = v11;

    objc_storeStrong(&v10->_refreshDate, a4);
    v10->_defaultForCategory = a5;
  }

  return v10;
}

- (id)plistRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"Open";
  v7[1] = @"Refresh";
  refreshDate = self->_refreshDate;
  v8[0] = self->_windowOpenDates;
  v8[1] = refreshDate;
  v7[2] = @"IsDefault";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultForCategory];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)createFromPlistRepresentation:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v4 = [v3 objectForKey:@"Open"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
LABEL_7:
    v8 = v5;
    goto LABEL_9;
  }

  v7 = objc_opt_class();
  if (_LSIsArrayWithValuesOfClass(v4, v7))
  {
    v5 = v4;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:
  v9 = objc_opt_class();
  v10 = [v3 objectForKey:@"Refresh"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = objc_opt_class();
  v13 = [v3 objectForKey:@"IsDefault"];
  v14 = v13;
  if (v12 && v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v14 = 0;
  }

  v6 = 0;
  if ([v8 count] && v11 && v14)
  {
    v6 = -[LSDefaultApplicationQueryEntry initWithWindowOpenDates:refreshDate:defaultForCategory:]([LSDefaultApplicationQueryEntry alloc], "initWithWindowOpenDates:refreshDate:defaultForCategory:", v8, v11, [v14 BOOLValue]);
  }

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)oldestWindowOpenDate
{
  v4 = [(NSArray *)self->_windowOpenDates firstObject];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"LSDefaultApplicationQueryBackend.mm" lineNumber:91 description:@"must have at least one known window"];
  }

  return v4;
}

- (id)newestWindowOpenDate
{
  v4 = [(NSArray *)self->_windowOpenDates lastObject];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"LSDefaultApplicationQueryBackend.mm" lineNumber:98 description:@"must have at least one known window"];
  }

  return v4;
}

@end