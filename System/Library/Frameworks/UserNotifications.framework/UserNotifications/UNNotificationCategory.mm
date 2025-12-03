@interface UNNotificationCategory
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder categorySummaryFormat:(NSString *)categorySummaryFormat options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder categorySummaryFormat:(id)format options:(unint64_t)options;
+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options;
+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (UNNotificationCategory)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions alternateAction:(id)action intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder categorySummaryFormat:(id)format actionsMenuTitle:(id)self0 options:(unint64_t)self1 backgroundStyle:(unint64_t)self2 listPriority:(unint64_t)self3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationCategory

- (unint64_t)hash
{
  actions = [(UNNotificationCategory *)self actions];
  v3 = [actions hash];
  minimalActions = [(UNNotificationCategory *)self minimalActions];
  v5 = [minimalActions hash] ^ v3;
  intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
  v7 = [intentIdentifiers hash];
  alternateAction = [(UNNotificationCategory *)self alternateAction];
  v9 = v5 ^ v7 ^ [alternateAction hash];
  identifier = [(UNNotificationCategory *)self identifier];
  v11 = [identifier hash];
  v12 = v11 ^ [(UNNotificationCategory *)self options];
  hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v14 = v9 ^ v12 ^ [hiddenPreviewsBodyPlaceholder hash];
  categorySummaryFormat = [(UNNotificationCategory *)self categorySummaryFormat];
  v16 = [categorySummaryFormat hash];
  actionsMenuTitle = [(UNNotificationCategory *)self actionsMenuTitle];
  v18 = v16 ^ [actionsMenuTitle hash];
  v19 = v18 ^ [(UNNotificationCategory *)self backgroundStyle];
  v20 = v19 ^ [(UNNotificationCategory *)self listPriority];

  return v14 ^ v20;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers options:(UNNotificationCategoryOptions)options
{
  v10 = intentIdentifiers;
  v11 = actions;
  v12 = identifier;
  v13 = [self alloc];
  v14 = [v13 _initWithIdentifier:v12 actions:v11 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:options options:0 backgroundStyle:0 listPriority:?];

  return v14;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers options:(unint64_t)options
{
  identifiersCopy = identifiers;
  minimalActionsCopy = minimalActions;
  actionsCopy = actions;
  identifierCopy = identifier;
  v16 = [[self alloc] _initWithIdentifier:identifierCopy actions:actionsCopy minimalActions:minimalActionsCopy alternateAction:0 intentIdentifiers:identifiersCopy hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:options options:0 backgroundStyle:0 listPriority:?];

  return v16;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder options:(UNNotificationCategoryOptions)options
{
  v12 = hiddenPreviewsBodyPlaceholder;
  v13 = intentIdentifiers;
  v14 = actions;
  v15 = identifier;
  v16 = [self alloc];
  v17 = [v16 _initWithIdentifier:v15 actions:v14 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v13 hiddenPreviewsBodyPlaceholder:v12 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v17;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder options:(unint64_t)options
{
  placeholderCopy = placeholder;
  identifiersCopy = identifiers;
  minimalActionsCopy = minimalActions;
  actionsCopy = actions;
  identifierCopy = identifier;
  v19 = [[self alloc] _initWithIdentifier:identifierCopy actions:actionsCopy minimalActions:minimalActionsCopy alternateAction:0 intentIdentifiers:identifiersCopy hiddenPreviewsBodyPlaceholder:placeholderCopy categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v19;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder categorySummaryFormat:(NSString *)categorySummaryFormat options:(UNNotificationCategoryOptions)options
{
  v14 = categorySummaryFormat;
  v15 = hiddenPreviewsBodyPlaceholder;
  v16 = intentIdentifiers;
  v17 = actions;
  v18 = identifier;
  v19 = [self alloc];
  v20 = [v19 _initWithIdentifier:v18 actions:v17 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v16 hiddenPreviewsBodyPlaceholder:v15 categorySummaryFormat:v14 actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v20;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder categorySummaryFormat:(id)format options:(unint64_t)options
{
  formatCopy = format;
  placeholderCopy = placeholder;
  identifiersCopy = identifiers;
  minimalActionsCopy = minimalActions;
  actionsCopy = actions;
  identifierCopy = identifier;
  v21 = [[self alloc] _initWithIdentifier:identifierCopy actions:actionsCopy minimalActions:minimalActionsCopy alternateAction:0 intentIdentifiers:identifiersCopy hiddenPreviewsBodyPlaceholder:placeholderCopy categorySummaryFormat:formatCopy actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v21;
}

- (id)_initWithIdentifier:(id)identifier actions:(id)actions minimalActions:(id)minimalActions alternateAction:(id)action intentIdentifiers:(id)identifiers hiddenPreviewsBodyPlaceholder:(id)placeholder categorySummaryFormat:(id)format actionsMenuTitle:(id)self0 options:(unint64_t)self1 backgroundStyle:(unint64_t)self2 listPriority:(unint64_t)self3
{
  identifierCopy = identifier;
  actionsCopy = actions;
  minimalActionsCopy = minimalActions;
  actionCopy = action;
  identifiersCopy = identifiers;
  placeholderCopy = placeholder;
  formatCopy = format;
  titleCopy = title;
  v43.receiver = self;
  v43.super_class = UNNotificationCategory;
  v26 = [(UNNotificationCategory *)&v43 init];
  if (v26)
  {
    v27 = [actionsCopy copy];
    actions = v26->_actions;
    v26->_actions = v27;

    v29 = [minimalActionsCopy copy];
    minimalActions = v26->_minimalActions;
    v26->_minimalActions = v29;

    v31 = [actionCopy copy];
    alternateAction = v26->_alternateAction;
    v26->_alternateAction = v31;

    v33 = [identifiersCopy copy];
    intentIdentifiers = v26->_intentIdentifiers;
    v26->_intentIdentifiers = v33;

    v35 = [identifierCopy copy];
    identifier = v26->_identifier;
    v26->_identifier = v35;

    v37 = [placeholderCopy copy];
    hiddenPreviewsBodyPlaceholder = v26->_hiddenPreviewsBodyPlaceholder;
    v26->_hiddenPreviewsBodyPlaceholder = v37;

    v26->_options = options;
    v39 = [formatCopy copy];
    categorySummaryFormat = v26->_categorySummaryFormat;
    v26->_categorySummaryFormat = v39;

    objc_storeStrong(&v26->_actionsMenuTitle, title);
    v26->_backgroundStyle = style;
    v26->_listPriority = priority;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actions = [(UNNotificationCategory *)self actions];
    actions2 = [equalCopy actions];
    if (!UNEqualObjects(actions, actions2))
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    minimalActions = [(UNNotificationCategory *)self minimalActions];
    minimalActions2 = [equalCopy minimalActions];
    if (!UNEqualObjects(minimalActions, minimalActions2))
    {
      v20 = 0;
LABEL_30:

      goto LABEL_31;
    }

    intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
    intentIdentifiers2 = [equalCopy intentIdentifiers];
    if (!UNEqualObjects(intentIdentifiers, intentIdentifiers2))
    {
      v20 = 0;
LABEL_29:

      goto LABEL_30;
    }

    alternateAction = [(UNNotificationCategory *)self alternateAction];
    alternateAction2 = [equalCopy alternateAction];
    if (!UNEqualObjects(alternateAction, alternateAction2))
    {
      v20 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v30 = alternateAction2;
    identifier = [(UNNotificationCategory *)self identifier];
    [equalCopy identifier];
    v29 = v31 = identifier;
    if (UNEqualStrings(identifier, v29))
    {
      v28 = alternateAction;
      options = [(UNNotificationCategory *)self options];
      if (options == [equalCopy options])
      {
        hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
        hiddenPreviewsBodyPlaceholder2 = [equalCopy hiddenPreviewsBodyPlaceholder];
        v27 = hiddenPreviewsBodyPlaceholder;
        if (UNEqualStrings(hiddenPreviewsBodyPlaceholder, hiddenPreviewsBodyPlaceholder2))
        {
          categorySummaryFormat = [(UNNotificationCategory *)self categorySummaryFormat];
          categorySummaryFormat2 = [equalCopy categorySummaryFormat];
          v25 = categorySummaryFormat;
          if (UNEqualStrings(categorySummaryFormat, categorySummaryFormat2))
          {
            actionsMenuTitle = [(UNNotificationCategory *)self actionsMenuTitle];
            actionsMenuTitle2 = [equalCopy actionsMenuTitle];
            v23 = actionsMenuTitle;
            if (UNEqualStrings(actionsMenuTitle, actionsMenuTitle2) && (v18 = -[UNNotificationCategory backgroundStyle](self, "backgroundStyle", actionsMenuTitle2, actionsMenuTitle, categorySummaryFormat2, v25, hiddenPreviewsBodyPlaceholder2, v27), v18 == [equalCopy backgroundStyle]))
            {
              listPriority = [(UNNotificationCategory *)self listPriority];
              v20 = listPriority == [equalCopy listPriority];
            }

            else
            {
              v20 = 0;
            }

            alternateAction = v28;
            alternateAction2 = v30;
          }

          else
          {
            v20 = 0;
            alternateAction = v28;
            alternateAction2 = v30;
          }
        }

        else
        {
          v20 = 0;
          alternateAction = v28;
          alternateAction2 = v30;
        }

        goto LABEL_27;
      }

      v20 = 0;
      alternateAction = v28;
    }

    else
    {
      v20 = 0;
    }

    alternateAction2 = v30;
LABEL_27:

    goto LABEL_28;
  }

  v20 = 0;
LABEL_32:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(UNNotificationCategory *)self identifier];
  actions = [(UNNotificationCategory *)self actions];
  minimalActions = [(UNNotificationCategory *)self minimalActions];
  intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
  [(UNNotificationCategory *)self options];
  v9 = NSStringFromBOOL();
  [(UNNotificationCategory *)self options];
  v10 = NSStringFromBOOL();
  hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v12 = [v3 stringWithFormat:@"<%@: %p identifier: %@, actions: %@, minimalAction: %@, intentIdentifiers: %@, custom dismiss: %@, CarPlay: %@, private body: %@>", v4, self, identifier, actions, minimalActions, intentIdentifiers, v9, v10, hiddenPreviewsBodyPlaceholder];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v14 = [UNMutableNotificationCategory allocWithZone:zone];
  identifier = [(UNNotificationCategory *)self identifier];
  actions = [(UNNotificationCategory *)self actions];
  minimalActions = [(UNNotificationCategory *)self minimalActions];
  alternateAction = [(UNNotificationCategory *)self alternateAction];
  intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
  hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  categorySummaryFormat = [(UNNotificationCategory *)self categorySummaryFormat];
  actionsMenuTitle = [(UNNotificationCategory *)self actionsMenuTitle];
  v11 = [(UNNotificationCategory *)v14 _initWithIdentifier:identifier actions:actions minimalActions:minimalActions alternateAction:alternateAction intentIdentifiers:intentIdentifiers hiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder categorySummaryFormat:categorySummaryFormat actionsMenuTitle:actionsMenuTitle options:[(UNNotificationCategory *)self options] backgroundStyle:[(UNNotificationCategory *)self backgroundStyle] listPriority:[(UNNotificationCategory *)self listPriority]];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = [(UNNotificationCategory *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  identifier = [(UNNotificationCategory *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  intentIdentifiers = [(UNNotificationCategory *)self intentIdentifiers];
  [coderCopy encodeObject:intentIdentifiers forKey:@"intentIdentifiers"];

  [coderCopy encodeInteger:-[UNNotificationCategory options](self forKey:{"options"), @"options"}];
  minimalActions = [(UNNotificationCategory *)self minimalActions];
  [coderCopy encodeObject:minimalActions forKey:@"minimalActions"];

  alternateAction = [(UNNotificationCategory *)self alternateAction];
  [coderCopy encodeObject:alternateAction forKey:@"alternateAction"];

  hiddenPreviewsBodyPlaceholder = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v10 = [hiddenPreviewsBodyPlaceholder un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v10 forKey:@"hiddenPreviewsBodyPlaceholder"];

  categorySummaryFormat = [(UNNotificationCategory *)self categorySummaryFormat];
  v12 = [categorySummaryFormat un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v12 forKey:@"categorySummaryFormat"];

  actionsMenuTitle = [(UNNotificationCategory *)self actionsMenuTitle];
  v14 = [actionsMenuTitle un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v14 forKey:@"actionsMenuTitle"];

  [coderCopy encodeInteger:-[UNNotificationCategory backgroundStyle](self forKey:{"backgroundStyle"), @"backgroundStyle"}];
  [coderCopy encodeInteger:-[UNNotificationCategory listPriority](self forKey:{"listPriority"), @"listPriority"}];
}

- (UNNotificationCategory)initWithCoder:(id)coder
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"actions"];
  v40 = [v7 copy];

  v8 = MEMORY[0x1E695DFD8];
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"minimalActions"];
  v39 = [v11 copy];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateAction"];
  v38 = [v12 copy];

  v13 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"intentIdentifiers"];
  v17 = [v16 copy];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v19 = [v18 copy];

  v20 = [coderCopy decodeIntegerForKey:@"options"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"hiddenPreviewsBodyPlaceholder"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"categorySummaryFormat"];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"actionsMenuTitle"];

  v33 = [coderCopy decodeIntegerForKey:@"backgroundStyle"];
  v34 = [coderCopy decodeIntegerForKey:@"listPriority"];

  v35 = [(UNNotificationCategory *)self _initWithIdentifier:v19 actions:v40 minimalActions:v39 alternateAction:v38 intentIdentifiers:v17 hiddenPreviewsBodyPlaceholder:v24 categorySummaryFormat:v28 actionsMenuTitle:v32 options:v20 backgroundStyle:v33 listPriority:v34];
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

@end