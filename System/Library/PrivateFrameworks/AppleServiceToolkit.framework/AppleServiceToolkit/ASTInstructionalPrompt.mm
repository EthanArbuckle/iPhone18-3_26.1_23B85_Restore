@interface ASTInstructionalPrompt
- (ASTInstructionalPrompt)initWithCoder:(id)coder;
- (ASTInstructionalPrompt)initWithID:(id)d type:(int64_t)type iconLocator:(id)locator localizedTitle:(id)title localizedSubtitle:(id)subtitle imageLocators:(id)locators instructions:(id)instructions instructionsStyle:(int64_t)self0 options:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTInstructionalPrompt

- (ASTInstructionalPrompt)initWithID:(id)d type:(int64_t)type iconLocator:(id)locator localizedTitle:(id)title localizedSubtitle:(id)subtitle imageLocators:(id)locators instructions:(id)instructions instructionsStyle:(int64_t)self0 options:(id)self1
{
  dCopy = d;
  locatorCopy = locator;
  titleCopy = title;
  subtitleCopy = subtitle;
  locatorsCopy = locators;
  instructionsCopy = instructions;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = ASTInstructionalPrompt;
  v19 = [(ASTInstructionalPrompt *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, d);
    v20->_type = type;
    objc_storeStrong(&v20->_iconLocator, locator);
    objc_storeStrong(&v20->_localizedTitle, title);
    objc_storeStrong(&v20->_localizedSubtitle, subtitle);
    objc_storeStrong(&v20->_imageLocators, locators);
    objc_storeStrong(&v20->_instructions, instructions);
    v20->_instructionsStyle = style;
    objc_storeStrong(&v20->_options, options);
    navigationBarActions = v20->_navigationBarActions;
    v20->_navigationBarActions = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (ASTInstructionalPrompt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTInstructionalPrompt *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntForKey:@"type"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconLocator"];
    iconLocator = v5->_iconLocator;
    v5->_iconLocator = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"imageLocators"];
    imageLocators = v5->_imageLocators;
    v5->_imageLocators = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"instructions"];
    instructions = v5->_instructions;
    v5->_instructions = v22;

    v5->_instructionsStyle = [coderCopy decodeIntForKey:@"instructionsStyle"];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"options"];
    options = v5->_options;
    v5->_options = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"navigationBarActions"];
    navigationBarActions = v5->_navigationBarActions;
    v5->_navigationBarActions = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ASTInstructionalPrompt *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInt:-[ASTInstructionalPrompt type](self forKey:{"type"), @"type"}];
  iconLocator = [(ASTInstructionalPrompt *)self iconLocator];
  [coderCopy encodeObject:iconLocator forKey:@"iconLocator"];

  localizedTitle = [(ASTInstructionalPrompt *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  localizedSubtitle = [(ASTInstructionalPrompt *)self localizedSubtitle];
  [coderCopy encodeObject:localizedSubtitle forKey:@"localizedSubtitle"];

  imageLocators = [(ASTInstructionalPrompt *)self imageLocators];
  [coderCopy encodeObject:imageLocators forKey:@"imageLocators"];

  instructions = [(ASTInstructionalPrompt *)self instructions];
  [coderCopy encodeObject:instructions forKey:@"instructions"];

  [coderCopy encodeInt:-[ASTInstructionalPrompt instructionsStyle](self forKey:{"instructionsStyle"), @"instructionsStyle"}];
  options = [(ASTInstructionalPrompt *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  navigationBarActions = [(ASTInstructionalPrompt *)self navigationBarActions];
  [coderCopy encodeObject:navigationBarActions forKey:@"navigationBarActions"];
}

@end