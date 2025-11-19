@interface ATXPosterEdit
- (ATXPosterEdit)initWithCoder:(id)a3;
- (ATXPosterEdit)initWithLockscreenId:(id)a3 entryPoint:(id)a4 newlyCreated:(BOOL)a5 secondsSinceLastEdit:(int64_t)a6;
- (ATXPosterEdit)initWithLockscreenId:(id)a3 entryPoint:(id)a4 newlyCreated:(BOOL)a5 secondsSinceLastEdit:(int64_t)a6 outcome:(id)a7 userChangedColor:(BOOL)a8 userChangedFont:(BOOL)a9 userChangedNumberingSystem:(BOOL)a10 userChangedPosterContent:(BOOL)a11 userChangedWidgets:(BOOL)a12 didLockscreenHaveWidgetsBeforeEdit:(BOOL)a13 duration:(unint64_t)a14;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPosterEdit:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPosterEdit

- (ATXPosterEdit)initWithLockscreenId:(id)a3 entryPoint:(id)a4 newlyCreated:(BOOL)a5 secondsSinceLastEdit:(int64_t)a6
{
  BYTE4(v7) = 0;
  LODWORD(v7) = 0;
  return [ATXPosterEdit initWithLockscreenId:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" entryPoint:a3 newlyCreated:a4 secondsSinceLastEdit:a5 outcome:a6 userChangedColor:@"unknown" userChangedFont:0 userChangedNumberingSystem:v7 userChangedPosterContent:-1 userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];
}

- (ATXPosterEdit)initWithLockscreenId:(id)a3 entryPoint:(id)a4 newlyCreated:(BOOL)a5 secondsSinceLastEdit:(int64_t)a6 outcome:(id)a7 userChangedColor:(BOOL)a8 userChangedFont:(BOOL)a9 userChangedNumberingSystem:(BOOL)a10 userChangedPosterContent:(BOOL)a11 userChangedWidgets:(BOOL)a12 didLockscreenHaveWidgetsBeforeEdit:(BOOL)a13 duration:(unint64_t)a14
{
  v20 = a3;
  v21 = a4;
  v22 = a7;
  v31.receiver = self;
  v31.super_class = ATXPosterEdit;
  v23 = [(ATXPosterEdit *)&v31 init];
  if (v23)
  {
    v24 = [v20 copy];
    lockscreenId = v23->_lockscreenId;
    v23->_lockscreenId = v24;

    v26 = [v21 copy];
    entryPoint = v23->_entryPoint;
    v23->_entryPoint = v26;

    v23->_newlyCreated = a5;
    v23->_secondsSinceLastEdit = a6;
    v28 = [v22 copy];
    outcome = v23->_outcome;
    v23->_outcome = v28;

    v23->_userChangedColor = a8;
    v23->_userChangedFont = a9;
    v23->_userChangedNumberingSystem = a10;
    v23->_userChangedPosterContent = a11;
    v23->_userChangedWidgets = a12;
    v23->_didLockscreenHaveWidgetsBeforeEdit = a13;
    v23->_duration = a14;
  }

  return v23;
}

- (ATXPosterEdit)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lockscreenId"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entryPoint"];
  v17 = [v3 decodeBoolForKey:@"newlyCreated"];
  v16 = [v3 decodeIntegerForKey:@"secondsSinceLastEdit"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"outcome"];
  v6 = [v3 decodeBoolForKey:@"userChangedColor"];
  v7 = [v3 decodeBoolForKey:@"userChangedFont"];
  v8 = [v3 decodeBoolForKey:@"userChangedNumberingSystem"];
  v9 = [v3 decodeBoolForKey:@"userChangedPosterContent"];
  v10 = [v3 decodeBoolForKey:@"userChangedWidgets"];
  v11 = [v3 decodeBoolForKey:@"didLockscreenHaveWidgetsBeforeEdit"];
  v12 = [v3 decodeIntegerForKey:@"duration"];

  BYTE4(v15) = v11;
  BYTE3(v15) = v10;
  BYTE2(v15) = v9;
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [ATXPosterEdit initWithLockscreenId:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" entryPoint:v18 newlyCreated:v4 secondsSinceLastEdit:v17 outcome:v16 userChangedColor:v5 userChangedFont:v6 userChangedNumberingSystem:v15 userChangedPosterContent:v12 userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ATXPosterEdit *)self lockscreenId];
  [v7 encodeObject:v4 forKey:@"lockscreenId"];

  v5 = [(ATXPosterEdit *)self entryPoint];
  [v7 encodeObject:v5 forKey:@"entryPoint"];

  [v7 encodeBool:-[ATXPosterEdit isNewlyCreated](self forKey:{"isNewlyCreated"), @"newlyCreated"}];
  [v7 encodeInteger:-[ATXPosterEdit secondsSinceLastEdit](self forKey:{"secondsSinceLastEdit"), @"secondsSinceLastEdit"}];
  v6 = [(ATXPosterEdit *)self outcome];
  [v7 encodeObject:v6 forKey:@"outcome"];

  [v7 encodeBool:-[ATXPosterEdit userChangedColor](self forKey:{"userChangedColor"), @"userChangedColor"}];
  [v7 encodeBool:-[ATXPosterEdit userChangedFont](self forKey:{"userChangedFont"), @"userChangedFont"}];
  [v7 encodeBool:-[ATXPosterEdit userChangedNumberingSystem](self forKey:{"userChangedNumberingSystem"), @"userChangedNumberingSystem"}];
  [v7 encodeBool:-[ATXPosterEdit userChangedPosterContent](self forKey:{"userChangedPosterContent"), @"userChangedPosterContent"}];
  [v7 encodeBool:-[ATXPosterEdit userChangedWidgets](self forKey:{"userChangedWidgets"), @"userChangedWidgets"}];
  [v7 encodeBool:-[ATXPosterEdit didLockscreenHaveWidgetsBeforeEdit](self forKey:{"didLockscreenHaveWidgetsBeforeEdit"), @"didLockscreenHaveWidgetsBeforeEdit"}];
  [v7 encodeInteger:-[ATXPosterEdit duration](self forKey:{"duration"), @"duration"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v19 = [(ATXPosterEdit *)v3 lockscreenId];
  v17 = [v19 copy];
  v18 = [(ATXPosterEdit *)v3 entryPoint];
  v4 = [v18 copy];
  v16 = [(ATXPosterEdit *)v3 isNewlyCreated];
  v15 = [(ATXPosterEdit *)v3 secondsSinceLastEdit];
  v5 = [(ATXPosterEdit *)v3 outcome];
  v6 = [v5 copy];
  v7 = [(ATXPosterEdit *)v3 userChangedColor];
  v8 = [(ATXPosterEdit *)v3 userChangedFont];
  v9 = [(ATXPosterEdit *)v3 userChangedNumberingSystem];
  v10 = [(ATXPosterEdit *)v3 userChangedPosterContent];
  v11 = [(ATXPosterEdit *)v3 userChangedWidgets];
  BYTE4(v14) = [(ATXPosterEdit *)v3 didLockscreenHaveWidgetsBeforeEdit];
  BYTE3(v14) = v11;
  BYTE2(v14) = v10;
  BYTE1(v14) = v9;
  LOBYTE(v14) = v8;
  v12 = [ATXPosterEdit initWithLockscreenId:v3 entryPoint:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" newlyCreated:v17 secondsSinceLastEdit:v4 outcome:v16 userChangedColor:v15 userChangedFont:v6 userChangedNumberingSystem:v7 userChangedPosterContent:v14 userChangedWidgets:[(ATXPosterEdit *)v3 duration] didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterEdit *)self isEqualToATXPosterEdit:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterEdit:(id)a3
{
  v4 = a3;
  v5 = self->_lockscreenId;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_22:
      v23 = 0;
      goto LABEL_23;
    }
  }

  v8 = self->_entryPoint;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  newlyCreated = self->_newlyCreated;
  if (newlyCreated != [v4 isNewlyCreated])
  {
    goto LABEL_22;
  }

  secondsSinceLastEdit = self->_secondsSinceLastEdit;
  if (secondsSinceLastEdit != [v4 secondsSinceLastEdit])
  {
    goto LABEL_22;
  }

  v13 = self->_outcome;
  v14 = v13;
  if (v13 == v4[5])
  {
  }

  else
  {
    v15 = [(NSString *)v13 isEqual:?];

    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  userChangedColor = self->_userChangedColor;
  if (userChangedColor != [v4 userChangedColor])
  {
    goto LABEL_22;
  }

  userChangedFont = self->_userChangedFont;
  if (userChangedFont != [v4 userChangedFont])
  {
    goto LABEL_22;
  }

  userChangedNumberingSystem = self->_userChangedNumberingSystem;
  if (userChangedNumberingSystem != [v4 userChangedNumberingSystem])
  {
    goto LABEL_22;
  }

  userChangedPosterContent = self->_userChangedPosterContent;
  if (userChangedPosterContent != [v4 userChangedPosterContent])
  {
    goto LABEL_22;
  }

  userChangedWidgets = self->_userChangedWidgets;
  if (userChangedWidgets != [v4 userChangedWidgets])
  {
    goto LABEL_22;
  }

  didLockscreenHaveWidgetsBeforeEdit = self->_didLockscreenHaveWidgetsBeforeEdit;
  if (didLockscreenHaveWidgetsBeforeEdit != [v4 didLockscreenHaveWidgetsBeforeEdit])
  {
    goto LABEL_22;
  }

  duration = self->_duration;
  v23 = duration == [v4 duration];
LABEL_23:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(ATXPosterEdit *)self lockscreenId];
  v4 = [v3 hash];

  v5 = [(ATXPosterEdit *)self entryPoint];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXPosterEdit *)self isNewlyCreated];
  v8 = [(ATXPosterEdit *)self secondsSinceLastEdit]- v7 + 32 * v7;
  v9 = [(ATXPosterEdit *)self outcome];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = 31 * (31 * v10 + [(ATXPosterEdit *)self userChangedColor]);
  v12 = 31 * (v11 + [(ATXPosterEdit *)self userChangedFont]);
  v13 = 31 * (v12 + [(ATXPosterEdit *)self userChangedNumberingSystem]);
  v14 = 31 * (v13 + [(ATXPosterEdit *)self userChangedPosterContent]);
  v15 = 31 * (v14 + [(ATXPosterEdit *)self userChangedWidgets]);
  v16 = v15 + [(ATXPosterEdit *)self didLockscreenHaveWidgetsBeforeEdit];
  return [(ATXPosterEdit *)self duration]- v16 + 32 * v16;
}

@end