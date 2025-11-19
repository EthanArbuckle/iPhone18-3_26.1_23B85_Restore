@interface _SingleCommunicationLimitSpecifiers
- (NSArray)allSpecifiers;
- (_SingleCommunicationLimitSpecifiers)initWithHeaderText:(id)a3 communicationLimit:(id)a4 maximumCommunicationLimit:(id)a5 app:(unint64_t)a6 direction:(unint64_t)a7;
- (id)communicationLimitForSpecifier:(id)a3;
- (id)specifierForCommunicationLimit:(id)a3;
- (void)updateForCommunicationLimit:(id)a3 maximumCommunicationLimit:(id)a4;
@end

@implementation _SingleCommunicationLimitSpecifiers

- (_SingleCommunicationLimitSpecifiers)initWithHeaderText:(id)a3 communicationLimit:(id)a4 maximumCommunicationLimit:(id)a5 app:(unint64_t)a6 direction:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v40.receiver = self;
  v40.super_class = _SingleCommunicationLimitSpecifiers;
  v15 = [(_SingleCommunicationLimitSpecifiers *)&v40 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v12];
    groupSpecifier = v15->_groupSpecifier;
    v15->_groupSpecifier = v16;

    [(PSSpecifier *)v15->_groupSpecifier setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5938]];
    v18 = @"SEND_MESSAGES_TO_FAVORITES";
    if (!a7)
    {
      v18 = @"RECEIVE_MESSAGES_FROM_FAVORITES";
    }

    v19 = @"RECEIVE_MESSAGES_FROM_CONTACTS";
    if (a7)
    {
      v19 = @"SEND_MESSAGES_TO_CONTACTS";
    }

    v20 = @"SEND_MESSAGES_TO_ANYONE";
    v21 = @"MAKE_CALLS_TO_FAVORITES";
    if (!a7)
    {
      v20 = @"RECEIVE_MESSAGES_FROM_ANYONE";
    }

    v22 = @"MAKE_CALLS_TO_CONTACTS";
    if (!a7)
    {
      v21 = @"RECEIVE_CALLS_FROM_FAVORITES";
      v22 = @"RECEIVE_CALLS_FROM_CONTACTS";
    }

    v23 = @"MAKE_CALLS_TO_ANYONE";
    if (!a7)
    {
      v23 = @"RECEIVE_CALLS_FROM_ANYONE";
    }

    if (a6)
    {
      v24 = v18;
    }

    else
    {
      v24 = v21;
    }

    if (a6)
    {
      v25 = v19;
    }

    else
    {
      v25 = v22;
    }

    v26 = MEMORY[0x1E69C5748];
    if (a6)
    {
      v27 = v20;
    }

    else
    {
      v27 = v23;
    }

    v28 = AXUILocalizedStringForKey(v24);
    v29 = [v26 preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    selectedContactsSpecifier = v15->_selectedContactsSpecifier;
    v15->_selectedContactsSpecifier = v29;

    v31 = MEMORY[0x1E69C5748];
    v32 = AXUILocalizedStringForKey(v25);
    v33 = [v31 preferenceSpecifierNamed:v32 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    allContactsSpecifier = v15->_allContactsSpecifier;
    v15->_allContactsSpecifier = v33;

    v35 = MEMORY[0x1E69C5748];
    v36 = AXUILocalizedStringForKey(v27);
    v37 = [v35 preferenceSpecifierNamed:v36 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    everyoneSpecifier = v15->_everyoneSpecifier;
    v15->_everyoneSpecifier = v37;

    [(_SingleCommunicationLimitSpecifiers *)v15 updateForCommunicationLimit:v13 maximumCommunicationLimit:v14];
  }

  return v15;
}

- (NSArray)allSpecifiers
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [(_SingleCommunicationLimitSpecifiers *)self groupSpecifier];
  v9[0] = v3;
  v4 = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];
  v9[1] = v4;
  v5 = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];
  v9[2] = v5;
  v6 = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)specifierForCommunicationLimit:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69945F0]])
  {
    v5 = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E6994610]])
  {
    v5 = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E6994600]])
  {
    v5 = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)communicationLimitForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];

  if (v5 != v4)
  {
    v6 = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];

    if (v6 == v4)
    {
      v9 = MEMORY[0x1E6994610];
      goto LABEL_10;
    }

    v7 = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];

    if (v7 == v4)
    {
      v9 = MEMORY[0x1E6994600];
      goto LABEL_10;
    }

    v8 = [MEMORY[0x1E6994620] commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_SingleCommunicationLimitSpecifiers communicationLimitForSpecifier:];
    }
  }

  v9 = MEMORY[0x1E69945F0];
LABEL_10:
  v10 = *v9;
  v11 = *v9;

  return v10;
}

- (void)updateForCommunicationLimit:(id)a3 maximumCommunicationLimit:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_SingleCommunicationLimitSpecifiers *)self groupSpecifier];
  v9 = [(_SingleCommunicationLimitSpecifiers *)self specifierForCommunicationLimit:v7];

  [v8 setProperty:v9 forKey:*MEMORY[0x1E69C5958]];
  v10 = CLFSortedCommunicationLimits();
  v11 = [v10 indexOfObject:v6];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E6994620] commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_SingleCommunicationLimitSpecifiers updateForCommunicationLimit:maximumCommunicationLimit:];
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93___SingleCommunicationLimitSpecifiers_updateForCommunicationLimit_maximumCommunicationLimit___block_invoke;
    v13[3] = &unk_1E812E5F0;
    v13[4] = self;
    v13[5] = v11;
    [v10 enumerateObjectsUsingBlock:v13];
  }
}

- (void)communicationLimitForSpecifier:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(&dword_1C0DFB000, v0, OS_LOG_TYPE_FAULT, "Unhandled incoming communication limit specifier: %@", v1, 0xCu);
}

- (void)updateForCommunicationLimit:maximumCommunicationLimit:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(&dword_1C0DFB000, v0, OS_LOG_TYPE_FAULT, "Unable to find maximum communication limit %@ in sorted list.", v1, 0xCu);
}

@end