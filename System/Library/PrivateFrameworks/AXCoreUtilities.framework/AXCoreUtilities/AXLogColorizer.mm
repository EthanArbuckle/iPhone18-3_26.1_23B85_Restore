@interface AXLogColorizer
+ (char)ansiColorSeqForAXLogColor:(int64_t)color;
+ (id)coloredString:(id)string withColor:(int64_t)color;
+ (id)colorizeStringIfEnabled:(id)enabled withColor:(int64_t)color;
+ (id)defaultColorizer;
- (AXLogColorTheme)colorTheme;
- (id)blueString:(id)string;
- (id)cyanString:(id)string;
- (id)debugString:(id)string;
- (id)description;
- (id)errorString:(id)string;
- (id)greenString:(id)string;
- (id)greyString:(id)string;
- (id)infoString:(id)string;
- (id)magentaString:(id)string;
- (id)redString:(id)string;
- (id)warningString:(id)string;
- (id)whiteOrBlackString:(id)string;
- (id)yellowString:(id)string;
- (void)_updateSettingsFromUserPrefs;
- (void)setColorTheme:(AXLogColorTheme *)theme;
@end

@implementation AXLogColorizer

+ (id)defaultColorizer
{
  if (defaultColorizer_onceToken != -1)
  {
    +[AXLogColorizer defaultColorizer];
  }

  v3 = defaultColorizer__shared;

  return v3;
}

uint64_t __34__AXLogColorizer_defaultColorizer__block_invoke()
{
  defaultColorizer__shared = [[AXLogColorizer alloc] _initAndManageWithSettings:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (char)ansiColorSeqForAXLogColor:(int64_t)color
{
  if ((color - 1) > 0xD)
  {
    return "\x1B[30m";
  }

  else
  {
    return off_1E735AD98[color - 1];
  }
}

+ (id)coloredString:(id)string withColor:(int64_t)color
{
  stringCopy = string;
  v6 = [AXLogColorizer ansiColorSeqForAXLogColor:color];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@%s", v6, stringCopy, "\x1B[0m"];

  return v7;
}

+ (id)colorizeStringIfEnabled:(id)enabled withColor:(int64_t)color
{
  enabledCopy = enabled;
  v6 = +[AXLogColorizer defaultColorizer];
  isActive = [v6 isActive];

  if (isActive)
  {
    v8 = [AXLogColorizer coloredString:enabledCopy withColor:color];

    enabledCopy = v8;
  }

  return enabledCopy;
}

- (void)_updateSettingsFromUserPrefs
{
  sharedInstance = [getAXSettingsClass() sharedInstance];
  internalLoggingColorTheme = [sharedInstance internalLoggingColorTheme];

  if (internalLoggingColorTheme == 1)
  {
    [(AXLogColorizer *)self setActive:1];
    +[AXLogColorizer defaultLightColorsTheme];
    v6 = v10;
    v7 = v11;
LABEL_6:
    v12 = v6;
    v13 = v7;
    [(AXLogColorizer *)self setColorTheme:&v12];
    v5 = 0;
    goto LABEL_7;
  }

  if (internalLoggingColorTheme != 2)
  {
    [(AXLogColorizer *)self setActive:0];
    +[AXLogColorizer defaultLightColorsTheme];
    v6 = v8;
    v7 = v9;
    goto LABEL_6;
  }

  v5 = 1;
  [(AXLogColorizer *)self setActive:1];
  +[AXLogColorizer defaultDarkColorsTheme];
  v12 = v14;
  v13 = v15;
  [(AXLogColorizer *)self setColorTheme:&v12];
LABEL_7:
  [(AXLogColorizer *)self setPreferDarkColors:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXLogColorizer isActive](self, "isActive")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXLogColorizer isManagedBySettings](self, "isManagedBySettings")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXLogColorizer preferDarkColors](self, "preferDarkColors")}];
  v7 = [v3 stringWithFormat:@"AXLogColorizer:<%p>. active:%@ managed:%@ preferDarkColors:%@", self, v4, v5, v6];

  return v7;
}

- (id)errorString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:stringCopy withColor:v8];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)warningString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:stringCopy withColor:v8];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)infoString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:stringCopy withColor:v8];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)debugString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:stringCopy withColor:v8];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)whiteOrBlackString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 0;
    }

    else
    {
      v5 = 14;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)greyString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    v5 = [AXLogColorizer coloredString:stringCopy withColor:1];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)redString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)greenString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)yellowString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)blueString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 8;
    }

    else
    {
      v5 = 9;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)magentaString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 10;
    }

    else
    {
      v5 = 11;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (id)cyanString:(id)string
{
  stringCopy = string;
  if ([(AXLogColorizer *)self isActive])
  {
    if ([(AXLogColorizer *)self preferDarkColors])
    {
      v5 = 12;
    }

    else
    {
      v5 = 13;
    }

    v6 = [AXLogColorizer coloredString:stringCopy withColor:v5];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v7;
}

- (AXLogColorTheme)colorTheme
{
  v3 = *&self[1].errorColor;
  *&retstr->errorColor = *&self->infoColor;
  *&retstr->infoColor = v3;
  return self;
}

- (void)setColorTheme:(AXLogColorTheme *)theme
{
  v3 = *&theme->infoColor;
  *&self->_colorTheme.errorColor = *&theme->errorColor;
  *&self->_colorTheme.infoColor = v3;
}

@end