@interface FKASiriShortcutKeyboardCommand
+ (id)commandWithSiriShortcutIdentifier:(id)a3;
- (AXSiriShortcut)shortcut;
- (BOOL)isEqualToCommand:(id)a3;
- (FKASiriShortcutKeyboardCommand)initWithCoder:(id)a3;
- (FKASiriShortcutKeyboardCommand)initWithSiriShortcutIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)localizedName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)perform;
@end

@implementation FKASiriShortcutKeyboardCommand

+ (id)commandWithSiriShortcutIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSiriShortcutIdentifier:v4];

  return v5;
}

- (FKASiriShortcutKeyboardCommand)initWithSiriShortcutIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FKASiriShortcutKeyboardCommand;
  v6 = [(AXSSKeyboardCommand *)&v9 initWithType:@"SiriShortcut"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriShortcutIdentifier, a3);
  }

  return v7;
}

- (FKASiriShortcutKeyboardCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FKASiriShortcutKeyboardCommand;
  v5 = [(AXSSKeyboardCommand *)&v14 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = [(AXSSKeyboardCommand *)v5 type];
  v8 = [v7 isEqualToString:@"SiriShortcut"];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriShortcut"];
    siriShortcutIdentifier = v6->_siriShortcutIdentifier;
    v6->_siriShortcutIdentifier = v9;

LABEL_4:
    v11 = v6;
    goto LABEL_8;
  }

  v12 = FKALogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [(FKASiriShortcutKeyboardCommand *)v6 initWithCoder:v12];
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FKASiriShortcutKeyboardCommand;
  v4 = a3;
  [(AXSSKeyboardCommand *)&v6 encodeWithCoder:v4];
  v5 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"siriShortcut"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v6 = [v4 initWithSiriShortcutIdentifier:v5];

  return v6;
}

- (AXSiriShortcut)shortcut
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  v4 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [v3 shortcutForIdentifier:v4];

  return v5;
}

- (id)localizedName
{
  v2 = [(FKASiriShortcutKeyboardCommand *)self shortcut];
  v3 = [v2 shortcutName];

  return v3;
}

- (BOOL)isEqualToCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 siriShortcutIdentifier];
    v6 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = FKASiriShortcutKeyboardCommand;
  v3 = [(AXSSKeyboardCommand *)&v7 hash];
  v4 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = FKASiriShortcutKeyboardCommand;
  v3 = [(AXSSKeyboardCommand *)&v7 description];
  v4 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [v3 stringByAppendingFormat:@", shortcut identifier: %@", v4];

  return v5;
}

- (void)perform
{
  v4 = +[AXSiriShortcutsManager sharedManager];
  v3 = [(FKASiriShortcutKeyboardCommand *)self shortcut];
  [v4 performShortcut:v3];
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 type];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_18B15E000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly decoded shortcut keyboard command with different type: %@", &v4, 0xCu);
}

@end