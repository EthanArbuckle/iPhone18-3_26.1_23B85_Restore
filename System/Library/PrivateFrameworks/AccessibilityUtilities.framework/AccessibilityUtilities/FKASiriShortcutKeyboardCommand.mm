@interface FKASiriShortcutKeyboardCommand
+ (id)commandWithSiriShortcutIdentifier:(id)identifier;
- (AXSiriShortcut)shortcut;
- (BOOL)isEqualToCommand:(id)command;
- (FKASiriShortcutKeyboardCommand)initWithCoder:(id)coder;
- (FKASiriShortcutKeyboardCommand)initWithSiriShortcutIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)perform;
@end

@implementation FKASiriShortcutKeyboardCommand

+ (id)commandWithSiriShortcutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithSiriShortcutIdentifier:identifierCopy];

  return v5;
}

- (FKASiriShortcutKeyboardCommand)initWithSiriShortcutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FKASiriShortcutKeyboardCommand;
  v6 = [(AXSSKeyboardCommand *)&v9 initWithType:@"SiriShortcut"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriShortcutIdentifier, identifier);
  }

  return v7;
}

- (FKASiriShortcutKeyboardCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FKASiriShortcutKeyboardCommand;
  v5 = [(AXSSKeyboardCommand *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  type = [(AXSSKeyboardCommand *)v5 type];
  v8 = [type isEqualToString:@"SiriShortcut"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriShortcut"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FKASiriShortcutKeyboardCommand;
  coderCopy = coder;
  [(AXSSKeyboardCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"siriShortcut"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  siriShortcutIdentifier = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v6 = [v4 initWithSiriShortcutIdentifier:siriShortcutIdentifier];

  return v6;
}

- (AXSiriShortcut)shortcut
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  siriShortcutIdentifier = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [v3 shortcutForIdentifier:siriShortcutIdentifier];

  return v5;
}

- (id)localizedName
{
  shortcut = [(FKASiriShortcutKeyboardCommand *)self shortcut];
  shortcutName = [shortcut shortcutName];

  return shortcutName;
}

- (BOOL)isEqualToCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    siriShortcutIdentifier = [commandCopy siriShortcutIdentifier];
    siriShortcutIdentifier2 = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
    v7 = [siriShortcutIdentifier isEqualToString:siriShortcutIdentifier2];
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
  siriShortcutIdentifier = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [siriShortcutIdentifier hash];

  return v5 ^ v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = FKASiriShortcutKeyboardCommand;
  v3 = [(AXSSKeyboardCommand *)&v7 description];
  siriShortcutIdentifier = [(FKASiriShortcutKeyboardCommand *)self siriShortcutIdentifier];
  v5 = [v3 stringByAppendingFormat:@", shortcut identifier: %@", siriShortcutIdentifier];

  return v5;
}

- (void)perform
{
  v4 = +[AXSiriShortcutsManager sharedManager];
  shortcut = [(FKASiriShortcutKeyboardCommand *)self shortcut];
  [v4 performShortcut:shortcut];
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