@interface AXLogColorizer
+ (char)ansiColorSeqForAXLogColor:(int64_t)a3;
+ (id)coloredString:(id)a3 withColor:(int64_t)a4;
+ (id)colorizeStringIfEnabled:(id)a3 withColor:(int64_t)a4;
+ (id)defaultColorizer;
- (AXLogColorTheme)colorTheme;
- (id)blueString:(id)a3;
- (id)cyanString:(id)a3;
- (id)debugString:(id)a3;
- (id)description;
- (id)errorString:(id)a3;
- (id)greenString:(id)a3;
- (id)greyString:(id)a3;
- (id)infoString:(id)a3;
- (id)magentaString:(id)a3;
- (id)redString:(id)a3;
- (id)warningString:(id)a3;
- (id)whiteOrBlackString:(id)a3;
- (id)yellowString:(id)a3;
- (void)_updateSettingsFromUserPrefs;
- (void)setColorTheme:(AXLogColorTheme *)a3;
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

+ (char)ansiColorSeqForAXLogColor:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    return "\x1B[30m";
  }

  else
  {
    return off_1E735AD98[a3 - 1];
  }
}

+ (id)coloredString:(id)a3 withColor:(int64_t)a4
{
  v5 = a3;
  v6 = [AXLogColorizer ansiColorSeqForAXLogColor:a4];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@%s", v6, v5, "\x1B[0m"];

  return v7;
}

+ (id)colorizeStringIfEnabled:(id)a3 withColor:(int64_t)a4
{
  v5 = a3;
  v6 = +[AXLogColorizer defaultColorizer];
  v7 = [v6 isActive];

  if (v7)
  {
    v8 = [AXLogColorizer coloredString:v5 withColor:a4];

    v5 = v8;
  }

  return v5;
}

- (void)_updateSettingsFromUserPrefs
{
  v3 = [getAXSettingsClass() sharedInstance];
  v4 = [v3 internalLoggingColorTheme];

  if (v4 == 1)
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

  if (v4 != 2)
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

- (id)errorString:(id)a3
{
  v4 = a3;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:v4 withColor:v8];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)warningString:(id)a3
{
  v4 = a3;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:v4 withColor:v8];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)infoString:(id)a3
{
  v4 = a3;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:v4 withColor:v8];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)debugString:(id)a3
{
  v4 = a3;
  if ([(AXLogColorizer *)self isActive])
  {
    [(AXLogColorizer *)self colorTheme];
    v5 = [AXLogColorizer coloredString:v4 withColor:v8];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)whiteOrBlackString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)greyString:(id)a3
{
  v4 = a3;
  if ([(AXLogColorizer *)self isActive])
  {
    v5 = [AXLogColorizer coloredString:v4 withColor:1];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)redString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)greenString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)yellowString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)blueString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)magentaString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)cyanString:(id)a3
{
  v4 = a3;
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

    v6 = [AXLogColorizer coloredString:v4 withColor:v5];
  }

  else
  {
    v6 = v4;
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

- (void)setColorTheme:(AXLogColorTheme *)a3
{
  v3 = *&a3->infoColor;
  *&self->_colorTheme.errorColor = *&a3->errorColor;
  *&self->_colorTheme.infoColor = v3;
}

@end