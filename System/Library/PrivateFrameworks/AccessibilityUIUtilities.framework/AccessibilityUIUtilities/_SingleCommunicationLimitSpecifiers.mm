@interface _SingleCommunicationLimitSpecifiers
- (NSArray)allSpecifiers;
- (_SingleCommunicationLimitSpecifiers)initWithHeaderText:(id)text communicationLimit:(id)limit maximumCommunicationLimit:(id)communicationLimit app:(unint64_t)app direction:(unint64_t)direction;
- (id)communicationLimitForSpecifier:(id)specifier;
- (id)specifierForCommunicationLimit:(id)limit;
- (void)updateForCommunicationLimit:(id)limit maximumCommunicationLimit:(id)communicationLimit;
@end

@implementation _SingleCommunicationLimitSpecifiers

- (_SingleCommunicationLimitSpecifiers)initWithHeaderText:(id)text communicationLimit:(id)limit maximumCommunicationLimit:(id)communicationLimit app:(unint64_t)app direction:(unint64_t)direction
{
  textCopy = text;
  limitCopy = limit;
  communicationLimitCopy = communicationLimit;
  v40.receiver = self;
  v40.super_class = _SingleCommunicationLimitSpecifiers;
  v15 = [(_SingleCommunicationLimitSpecifiers *)&v40 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69C5748] groupSpecifierWithName:textCopy];
    groupSpecifier = v15->_groupSpecifier;
    v15->_groupSpecifier = v16;

    [(PSSpecifier *)v15->_groupSpecifier setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5938]];
    v18 = @"SEND_MESSAGES_TO_FAVORITES";
    if (!direction)
    {
      v18 = @"RECEIVE_MESSAGES_FROM_FAVORITES";
    }

    v19 = @"RECEIVE_MESSAGES_FROM_CONTACTS";
    if (direction)
    {
      v19 = @"SEND_MESSAGES_TO_CONTACTS";
    }

    v20 = @"SEND_MESSAGES_TO_ANYONE";
    v21 = @"MAKE_CALLS_TO_FAVORITES";
    if (!direction)
    {
      v20 = @"RECEIVE_MESSAGES_FROM_ANYONE";
    }

    v22 = @"MAKE_CALLS_TO_CONTACTS";
    if (!direction)
    {
      v21 = @"RECEIVE_CALLS_FROM_FAVORITES";
      v22 = @"RECEIVE_CALLS_FROM_CONTACTS";
    }

    v23 = @"MAKE_CALLS_TO_ANYONE";
    if (!direction)
    {
      v23 = @"RECEIVE_CALLS_FROM_ANYONE";
    }

    if (app)
    {
      v24 = v18;
    }

    else
    {
      v24 = v21;
    }

    if (app)
    {
      v25 = v19;
    }

    else
    {
      v25 = v22;
    }

    v26 = MEMORY[0x1E69C5748];
    if (app)
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

    [(_SingleCommunicationLimitSpecifiers *)v15 updateForCommunicationLimit:limitCopy maximumCommunicationLimit:communicationLimitCopy];
  }

  return v15;
}

- (NSArray)allSpecifiers
{
  v9[4] = *MEMORY[0x1E69E9840];
  groupSpecifier = [(_SingleCommunicationLimitSpecifiers *)self groupSpecifier];
  v9[0] = groupSpecifier;
  selectedContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];
  v9[1] = selectedContactsSpecifier;
  allContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];
  v9[2] = allContactsSpecifier;
  everyoneSpecifier = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];
  v9[3] = everyoneSpecifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)specifierForCommunicationLimit:(id)limit
{
  limitCopy = limit;
  if ([limitCopy isEqualToString:*MEMORY[0x1E69945F0]])
  {
    allContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];
LABEL_7:
    v6 = allContactsSpecifier;
    goto LABEL_8;
  }

  if ([limitCopy isEqualToString:*MEMORY[0x1E6994610]])
  {
    allContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];
    goto LABEL_7;
  }

  if ([limitCopy isEqualToString:*MEMORY[0x1E6994600]])
  {
    allContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)communicationLimitForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  allContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self allContactsSpecifier];

  if (allContactsSpecifier != specifierCopy)
  {
    selectedContactsSpecifier = [(_SingleCommunicationLimitSpecifiers *)self selectedContactsSpecifier];

    if (selectedContactsSpecifier == specifierCopy)
    {
      v9 = MEMORY[0x1E6994610];
      goto LABEL_10;
    }

    everyoneSpecifier = [(_SingleCommunicationLimitSpecifiers *)self everyoneSpecifier];

    if (everyoneSpecifier == specifierCopy)
    {
      v9 = MEMORY[0x1E6994600];
      goto LABEL_10;
    }

    commonLog = [MEMORY[0x1E6994620] commonLog];
    if (os_log_type_enabled(commonLog, OS_LOG_TYPE_FAULT))
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

- (void)updateForCommunicationLimit:(id)limit maximumCommunicationLimit:(id)communicationLimit
{
  communicationLimitCopy = communicationLimit;
  limitCopy = limit;
  groupSpecifier = [(_SingleCommunicationLimitSpecifiers *)self groupSpecifier];
  v9 = [(_SingleCommunicationLimitSpecifiers *)self specifierForCommunicationLimit:limitCopy];

  [groupSpecifier setProperty:v9 forKey:*MEMORY[0x1E69C5958]];
  v10 = CLFSortedCommunicationLimits();
  v11 = [v10 indexOfObject:communicationLimitCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    commonLog = [MEMORY[0x1E6994620] commonLog];
    if (os_log_type_enabled(commonLog, OS_LOG_TYPE_FAULT))
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