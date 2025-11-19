@interface ASTInstructionalPrompt
- (ASTInstructionalPrompt)initWithCoder:(id)a3;
- (ASTInstructionalPrompt)initWithID:(id)a3 type:(int64_t)a4 iconLocator:(id)a5 localizedTitle:(id)a6 localizedSubtitle:(id)a7 imageLocators:(id)a8 instructions:(id)a9 instructionsStyle:(int64_t)a10 options:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTInstructionalPrompt

- (ASTInstructionalPrompt)initWithID:(id)a3 type:(int64_t)a4 iconLocator:(id)a5 localizedTitle:(id)a6 localizedSubtitle:(id)a7 imageLocators:(id)a8 instructions:(id)a9 instructionsStyle:(int64_t)a10 options:(id)a11
{
  v17 = a3;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = ASTInstructionalPrompt;
  v19 = [(ASTInstructionalPrompt *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    v20->_type = a4;
    objc_storeStrong(&v20->_iconLocator, a5);
    objc_storeStrong(&v20->_localizedTitle, a6);
    objc_storeStrong(&v20->_localizedSubtitle, a7);
    objc_storeStrong(&v20->_imageLocators, a8);
    objc_storeStrong(&v20->_instructions, a9);
    v20->_instructionsStyle = a10;
    objc_storeStrong(&v20->_options, a11);
    navigationBarActions = v20->_navigationBarActions;
    v20->_navigationBarActions = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (ASTInstructionalPrompt)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTInstructionalPrompt *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntForKey:@"type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconLocator"];
    iconLocator = v5->_iconLocator;
    v5->_iconLocator = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"imageLocators"];
    imageLocators = v5->_imageLocators;
    v5->_imageLocators = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"instructions"];
    instructions = v5->_instructions;
    v5->_instructions = v22;

    v5->_instructionsStyle = [v4 decodeIntForKey:@"instructionsStyle"];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"options"];
    options = v5->_options;
    v5->_options = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"navigationBarActions"];
    navigationBarActions = v5->_navigationBarActions;
    v5->_navigationBarActions = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTInstructionalPrompt *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInt:-[ASTInstructionalPrompt type](self forKey:{"type"), @"type"}];
  v6 = [(ASTInstructionalPrompt *)self iconLocator];
  [v4 encodeObject:v6 forKey:@"iconLocator"];

  v7 = [(ASTInstructionalPrompt *)self localizedTitle];
  [v4 encodeObject:v7 forKey:@"localizedTitle"];

  v8 = [(ASTInstructionalPrompt *)self localizedSubtitle];
  [v4 encodeObject:v8 forKey:@"localizedSubtitle"];

  v9 = [(ASTInstructionalPrompt *)self imageLocators];
  [v4 encodeObject:v9 forKey:@"imageLocators"];

  v10 = [(ASTInstructionalPrompt *)self instructions];
  [v4 encodeObject:v10 forKey:@"instructions"];

  [v4 encodeInt:-[ASTInstructionalPrompt instructionsStyle](self forKey:{"instructionsStyle"), @"instructionsStyle"}];
  v11 = [(ASTInstructionalPrompt *)self options];
  [v4 encodeObject:v11 forKey:@"options"];

  v12 = [(ASTInstructionalPrompt *)self navigationBarActions];
  [v4 encodeObject:v12 forKey:@"navigationBarActions"];
}

@end