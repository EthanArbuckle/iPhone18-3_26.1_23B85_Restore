@interface UNNotificationCategory
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder categorySummaryFormat:(NSString *)categorySummaryFormat options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers options:(UNNotificationCategoryOptions)options;
+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 hiddenPreviewsBodyPlaceholder:(id)a7 categorySummaryFormat:(id)a8 options:(unint64_t)a9;
+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 hiddenPreviewsBodyPlaceholder:(id)a7 options:(unint64_t)a8;
+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 options:(unint64_t)a7;
- (BOOL)isEqual:(id)a3;
- (UNNotificationCategory)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 alternateAction:(id)a6 intentIdentifiers:(id)a7 hiddenPreviewsBodyPlaceholder:(id)a8 categorySummaryFormat:(id)a9 actionsMenuTitle:(id)a10 options:(unint64_t)a11 backgroundStyle:(unint64_t)a12 listPriority:(unint64_t)a13;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationCategory

- (unint64_t)hash
{
  v22 = [(UNNotificationCategory *)self actions];
  v3 = [v22 hash];
  v4 = [(UNNotificationCategory *)self minimalActions];
  v5 = [v4 hash] ^ v3;
  v6 = [(UNNotificationCategory *)self intentIdentifiers];
  v7 = [v6 hash];
  v8 = [(UNNotificationCategory *)self alternateAction];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(UNNotificationCategory *)self identifier];
  v11 = [v10 hash];
  v12 = v11 ^ [(UNNotificationCategory *)self options];
  v13 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [(UNNotificationCategory *)self categorySummaryFormat];
  v16 = [v15 hash];
  v17 = [(UNNotificationCategory *)self actionsMenuTitle];
  v18 = v16 ^ [v17 hash];
  v19 = v18 ^ [(UNNotificationCategory *)self backgroundStyle];
  v20 = v19 ^ [(UNNotificationCategory *)self listPriority];

  return v14 ^ v20;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers options:(UNNotificationCategoryOptions)options
{
  v10 = intentIdentifiers;
  v11 = actions;
  v12 = identifier;
  v13 = [a1 alloc];
  v14 = [v13 _initWithIdentifier:v12 actions:v11 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:options options:0 backgroundStyle:0 listPriority:?];

  return v14;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 options:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] _initWithIdentifier:v15 actions:v14 minimalActions:v13 alternateAction:0 intentIdentifiers:v12 hiddenPreviewsBodyPlaceholder:&stru_1F308F460 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:a7 options:0 backgroundStyle:0 listPriority:?];

  return v16;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder options:(UNNotificationCategoryOptions)options
{
  v12 = hiddenPreviewsBodyPlaceholder;
  v13 = intentIdentifiers;
  v14 = actions;
  v15 = identifier;
  v16 = [a1 alloc];
  v17 = [v16 _initWithIdentifier:v15 actions:v14 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v13 hiddenPreviewsBodyPlaceholder:v12 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v17;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 hiddenPreviewsBodyPlaceholder:(id)a7 options:(unint64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[a1 alloc] _initWithIdentifier:v18 actions:v17 minimalActions:v16 alternateAction:0 intentIdentifiers:v15 hiddenPreviewsBodyPlaceholder:v14 categorySummaryFormat:&stru_1F308F460 actionsMenuTitle:&stru_1F308F460 options:a8 backgroundStyle:0 listPriority:0];

  return v19;
}

+ (UNNotificationCategory)categoryWithIdentifier:(NSString *)identifier actions:(NSArray *)actions intentIdentifiers:(NSArray *)intentIdentifiers hiddenPreviewsBodyPlaceholder:(NSString *)hiddenPreviewsBodyPlaceholder categorySummaryFormat:(NSString *)categorySummaryFormat options:(UNNotificationCategoryOptions)options
{
  v14 = categorySummaryFormat;
  v15 = hiddenPreviewsBodyPlaceholder;
  v16 = intentIdentifiers;
  v17 = actions;
  v18 = identifier;
  v19 = [a1 alloc];
  v20 = [v19 _initWithIdentifier:v18 actions:v17 minimalActions:MEMORY[0x1E695E0F0] alternateAction:0 intentIdentifiers:v16 hiddenPreviewsBodyPlaceholder:v15 categorySummaryFormat:v14 actionsMenuTitle:&stru_1F308F460 options:options backgroundStyle:0 listPriority:0];

  return v20;
}

+ (UNNotificationCategory)categoryWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 intentIdentifiers:(id)a6 hiddenPreviewsBodyPlaceholder:(id)a7 categorySummaryFormat:(id)a8 options:(unint64_t)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[a1 alloc] _initWithIdentifier:v20 actions:v19 minimalActions:v18 alternateAction:0 intentIdentifiers:v17 hiddenPreviewsBodyPlaceholder:v16 categorySummaryFormat:v15 actionsMenuTitle:&stru_1F308F460 options:a9 backgroundStyle:0 listPriority:0];

  return v21;
}

- (id)_initWithIdentifier:(id)a3 actions:(id)a4 minimalActions:(id)a5 alternateAction:(id)a6 intentIdentifiers:(id)a7 hiddenPreviewsBodyPlaceholder:(id)a8 categorySummaryFormat:(id)a9 actionsMenuTitle:(id)a10 options:(unint64_t)a11 backgroundStyle:(unint64_t)a12 listPriority:(unint64_t)a13
{
  v42 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v43.receiver = self;
  v43.super_class = UNNotificationCategory;
  v26 = [(UNNotificationCategory *)&v43 init];
  if (v26)
  {
    v27 = [v19 copy];
    actions = v26->_actions;
    v26->_actions = v27;

    v29 = [v20 copy];
    minimalActions = v26->_minimalActions;
    v26->_minimalActions = v29;

    v31 = [v21 copy];
    alternateAction = v26->_alternateAction;
    v26->_alternateAction = v31;

    v33 = [v22 copy];
    intentIdentifiers = v26->_intentIdentifiers;
    v26->_intentIdentifiers = v33;

    v35 = [v42 copy];
    identifier = v26->_identifier;
    v26->_identifier = v35;

    v37 = [v23 copy];
    hiddenPreviewsBodyPlaceholder = v26->_hiddenPreviewsBodyPlaceholder;
    v26->_hiddenPreviewsBodyPlaceholder = v37;

    v26->_options = a11;
    v39 = [v24 copy];
    categorySummaryFormat = v26->_categorySummaryFormat;
    v26->_categorySummaryFormat = v39;

    objc_storeStrong(&v26->_actionsMenuTitle, a10);
    v26->_backgroundStyle = a12;
    v26->_listPriority = a13;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationCategory *)self actions];
    v6 = [v4 actions];
    if (!UNEqualObjects(v5, v6))
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v7 = [(UNNotificationCategory *)self minimalActions];
    v8 = [v4 minimalActions];
    if (!UNEqualObjects(v7, v8))
    {
      v20 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v9 = [(UNNotificationCategory *)self intentIdentifiers];
    v10 = [v4 intentIdentifiers];
    if (!UNEqualObjects(v9, v10))
    {
      v20 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = [(UNNotificationCategory *)self alternateAction];
    v12 = [v4 alternateAction];
    if (!UNEqualObjects(v11, v12))
    {
      v20 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v30 = v12;
    v13 = [(UNNotificationCategory *)self identifier];
    [v4 identifier];
    v29 = v31 = v13;
    if (UNEqualStrings(v13, v29))
    {
      v28 = v11;
      v14 = [(UNNotificationCategory *)self options];
      if (v14 == [v4 options])
      {
        v15 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
        v26 = [v4 hiddenPreviewsBodyPlaceholder];
        v27 = v15;
        if (UNEqualStrings(v15, v26))
        {
          v16 = [(UNNotificationCategory *)self categorySummaryFormat];
          v24 = [v4 categorySummaryFormat];
          v25 = v16;
          if (UNEqualStrings(v16, v24))
          {
            v17 = [(UNNotificationCategory *)self actionsMenuTitle];
            v22 = [v4 actionsMenuTitle];
            v23 = v17;
            if (UNEqualStrings(v17, v22) && (v18 = -[UNNotificationCategory backgroundStyle](self, "backgroundStyle", v22, v17, v24, v25, v26, v27), v18 == [v4 backgroundStyle]))
            {
              v19 = [(UNNotificationCategory *)self listPriority];
              v20 = v19 == [v4 listPriority];
            }

            else
            {
              v20 = 0;
            }

            v11 = v28;
            v12 = v30;
          }

          else
          {
            v20 = 0;
            v11 = v28;
            v12 = v30;
          }
        }

        else
        {
          v20 = 0;
          v11 = v28;
          v12 = v30;
        }

        goto LABEL_27;
      }

      v20 = 0;
      v11 = v28;
    }

    else
    {
      v20 = 0;
    }

    v12 = v30;
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
  v5 = [(UNNotificationCategory *)self identifier];
  v6 = [(UNNotificationCategory *)self actions];
  v7 = [(UNNotificationCategory *)self minimalActions];
  v8 = [(UNNotificationCategory *)self intentIdentifiers];
  [(UNNotificationCategory *)self options];
  v9 = NSStringFromBOOL();
  [(UNNotificationCategory *)self options];
  v10 = NSStringFromBOOL();
  v11 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v12 = [v3 stringWithFormat:@"<%@: %p identifier: %@, actions: %@, minimalAction: %@, intentIdentifiers: %@, custom dismiss: %@, CarPlay: %@, private body: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v14 = [UNMutableNotificationCategory allocWithZone:a3];
  v13 = [(UNNotificationCategory *)self identifier];
  v4 = [(UNNotificationCategory *)self actions];
  v5 = [(UNNotificationCategory *)self minimalActions];
  v6 = [(UNNotificationCategory *)self alternateAction];
  v7 = [(UNNotificationCategory *)self intentIdentifiers];
  v8 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v9 = [(UNNotificationCategory *)self categorySummaryFormat];
  v10 = [(UNNotificationCategory *)self actionsMenuTitle];
  v11 = [(UNNotificationCategory *)v14 _initWithIdentifier:v13 actions:v4 minimalActions:v5 alternateAction:v6 intentIdentifiers:v7 hiddenPreviewsBodyPlaceholder:v8 categorySummaryFormat:v9 actionsMenuTitle:v10 options:[(UNNotificationCategory *)self options] backgroundStyle:[(UNNotificationCategory *)self backgroundStyle] listPriority:[(UNNotificationCategory *)self listPriority]];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(UNNotificationCategory *)self actions];
  [v15 encodeObject:v4 forKey:@"actions"];

  v5 = [(UNNotificationCategory *)self identifier];
  [v15 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UNNotificationCategory *)self intentIdentifiers];
  [v15 encodeObject:v6 forKey:@"intentIdentifiers"];

  [v15 encodeInteger:-[UNNotificationCategory options](self forKey:{"options"), @"options"}];
  v7 = [(UNNotificationCategory *)self minimalActions];
  [v15 encodeObject:v7 forKey:@"minimalActions"];

  v8 = [(UNNotificationCategory *)self alternateAction];
  [v15 encodeObject:v8 forKey:@"alternateAction"];

  v9 = [(UNNotificationCategory *)self hiddenPreviewsBodyPlaceholder];
  v10 = [v9 un_stringWithMaxLength:1000];
  [v15 encodeObject:v10 forKey:@"hiddenPreviewsBodyPlaceholder"];

  v11 = [(UNNotificationCategory *)self categorySummaryFormat];
  v12 = [v11 un_stringWithMaxLength:1000];
  [v15 encodeObject:v12 forKey:@"categorySummaryFormat"];

  v13 = [(UNNotificationCategory *)self actionsMenuTitle];
  v14 = [v13 un_stringWithMaxLength:1000];
  [v15 encodeObject:v14 forKey:@"actionsMenuTitle"];

  [v15 encodeInteger:-[UNNotificationCategory backgroundStyle](self forKey:{"backgroundStyle"), @"backgroundStyle"}];
  [v15 encodeInteger:-[UNNotificationCategory listPriority](self forKey:{"listPriority"), @"listPriority"}];
}

- (UNNotificationCategory)initWithCoder:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"actions"];
  v40 = [v7 copy];

  v8 = MEMORY[0x1E695DFD8];
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"minimalActions"];
  v39 = [v11 copy];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateAction"];
  v38 = [v12 copy];

  v13 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"intentIdentifiers"];
  v17 = [v16 copy];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v19 = [v18 copy];

  v20 = [v4 decodeIntegerForKey:@"options"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v4 decodeObjectOfClasses:v23 forKey:@"hiddenPreviewsBodyPlaceholder"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v4 decodeObjectOfClasses:v27 forKey:@"categorySummaryFormat"];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [v4 decodeObjectOfClasses:v31 forKey:@"actionsMenuTitle"];

  v33 = [v4 decodeIntegerForKey:@"backgroundStyle"];
  v34 = [v4 decodeIntegerForKey:@"listPriority"];

  v35 = [(UNNotificationCategory *)self _initWithIdentifier:v19 actions:v40 minimalActions:v39 alternateAction:v38 intentIdentifiers:v17 hiddenPreviewsBodyPlaceholder:v24 categorySummaryFormat:v28 actionsMenuTitle:v32 options:v20 backgroundStyle:v33 listPriority:v34];
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

@end