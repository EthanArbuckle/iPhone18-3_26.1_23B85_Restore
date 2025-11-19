@interface RTTCannedMessagesController
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (id)cannedReplies;
- (id)cannedRepliesFromSpecifiers;
- (id)newCannedReplySpecifier;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)addNewReply:(id)a3;
- (void)returnPressedAtEnd;
- (void)saveReplies;
- (void)setCustomReply:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation RTTCannedMessagesController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D3FAD8];
    v7 = settingsLocString(@"RTT_CANNED_TEXT_TITLE", @"RTTSettings");
    v8 = [v6 groupSpecifierWithName:v7];

    v9 = settingsLocString(@"RTT_CANNED_TEXT_FOOTER", @"RTTSettings");
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v5 addObject:v8];
    v10 = [(RTTCannedMessagesController *)self cannedReplies];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__RTTCannedMessagesController_specifiers__block_invoke;
    v19[3] = &unk_278B90AF0;
    v19[4] = self;
    v11 = v5;
    v20 = v11;
    [v10 enumerateObjectsUsingBlock:v19];
    v12 = MEMORY[0x277D3FAD8];
    v13 = settingsLocString(@"RTT_CANNED_TEXT_ADD", @"RTTSettings");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];
    addNewSpecifier = self->_addNewSpecifier;
    self->_addNewSpecifier = v14;

    [(PSSpecifier *)self->_addNewSpecifier setButtonAction:sel_addNewReply_];
    [(PSSpecifier *)self->_addNewSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    [v11 addObject:self->_addNewSpecifier];
    v16 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v11;
    v17 = v11;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __41__RTTCannedMessagesController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 newCannedReplySpecifier];
  [v5 setProperty:v4 forKey:@"cannedResponse"];

  [*(a1 + 40) addObject:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = RTTCannedMessagesController;
  v5 = [(RTTCannedMessagesController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 8)
  {
    v6 = [v5 editableTextField];
    [v6 setClearButtonMode:1];

    v7 = [v5 editableTextField];
    [v7 setReturnKeyType:9];

    [v5 setShowsReorderControl:{-[RTTCannedMessagesController isEditing](self, "isEditing")}];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(RTTCannedMessagesController *)self specifierAtIndexPath:a4];
  v5 = [v4 cellType] == 8;

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = [(RTTCannedMessagesController *)self specifierAtIndexPath:a5];
    [RTTCannedMessagesController removeSpecifier:"removeSpecifier:animated:" animated:?];
    if (([(RTTCannedMessagesController *)self isEditing]& 1) == 0)
    {
      [(RTTCannedMessagesController *)self saveReplies];
    }
  }
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = [(RTTCannedMessagesController *)self specifierAtIndexPath:a4];
  v6 = [v5 cellType];
  if (v6 == 8 || v6 == 6)
  {
    v8 = [(RTTCannedMessagesController *)self isEditing];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277D3FC48];
  if ([*(&self->super.super.super.super.super.isa + v10) count])
  {
    v11 = [(RTTCannedMessagesController *)self indexForIndexPath:v8];
    v12 = [(RTTCannedMessagesController *)self indexForIndexPath:v9];
    if (v11 < [*(&self->super.super.super.super.super.isa + v10) count])
    {
      v13 = [(RTTCannedMessagesController *)self specifierAtIndex:v11];
      if (v13)
      {
        v14 = [*(&self->super.super.super.super.super.isa + v10) mutableCopy];
        if (v12 >= [v14 count])
        {
          [RTTCannedMessagesController tableView:moveRowAtIndexPath:toIndexPath:];
        }

        if (v12 < [v14 count])
        {
          [v14 removeObjectAtIndex:v11];
          [v14 insertObject:v13 atIndex:v12];
        }

        v15 = *(&self->super.super.super.super.super.isa + v10);
        *(&self->super.super.super.super.super.isa + v10) = v14;
      }
    }
  }
}

- (void)returnPressedAtEnd
{
  v4 = [(RTTCannedMessagesController *)self view];
  v2 = [v4 window];
  v3 = [v2 firstResponder];
  [v3 resignFirstResponder];
}

- (id)newCannedReplySpecifier
{
  result = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:0 target:self set:sel_setCustomReply_specifier_ get:sel_customReply_ detail:0 cell:8 edit:0];
  *(result + *MEMORY[0x277D3FC88]) = 2;
  return result;
}

- (void)setCustomReply:(id)a3 specifier:(id)a4
{
  [a4 setProperty:a3 forKey:@"cannedResponse"];

  [(RTTCannedMessagesController *)self saveReplies];
}

- (void)addNewReply:(id)a3
{
  v4 = [(RTTCannedMessagesController *)self indexOfSpecifier:self->_addNewSpecifier];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v13 = [(RTTCannedMessagesController *)self newCannedReplySpecifier];
    [v13 setProperty:&stru_284E770C0 forKey:@"cannedResponse"];
    [(RTTCannedMessagesController *)self insertSpecifier:v13 atIndex:v5 animated:1];
    v6 = [(RTTCannedMessagesController *)self table];
    v7 = [(RTTCannedMessagesController *)self indexPathForSpecifier:v13];
    v8 = [v6 cellForRowAtIndexPath:v7];

    v9 = [v8 editableTextField];
    [v9 becomeFirstResponder];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = *MEMORY[0x277D770B0];
    v12 = [v8 editableTextField];
    [v10 postNotificationName:v11 object:v12];
  }
}

- (id)cannedRepliesFromSpecifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = *MEMORY[0x277D3FC48];
  v5 = [v3 initWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.isa + v4), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(&self->super.super.super.super.super.isa + v4);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) propertyForKey:{@"cannedResponse", v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)cannedReplies
{
  v2 = [MEMORY[0x277D440C0] sharedInstance];
  v3 = [v2 cannedResponses];

  return v3;
}

- (void)saveReplies
{
  v4 = [MEMORY[0x277D440C0] sharedInstance];
  v3 = [(RTTCannedMessagesController *)self cannedRepliesFromSpecifiers];
  [v4 setCannedResponses:v3];
}

@end