@interface ATXPosterEdit
- (ATXPosterEdit)initWithCoder:(id)coder;
- (ATXPosterEdit)initWithLockscreenId:(id)id entryPoint:(id)point newlyCreated:(BOOL)created secondsSinceLastEdit:(int64_t)edit;
- (ATXPosterEdit)initWithLockscreenId:(id)id entryPoint:(id)point newlyCreated:(BOOL)created secondsSinceLastEdit:(int64_t)edit outcome:(id)outcome userChangedColor:(BOOL)color userChangedFont:(BOOL)font userChangedNumberingSystem:(BOOL)self0 userChangedPosterContent:(BOOL)self1 userChangedWidgets:(BOOL)self2 didLockscreenHaveWidgetsBeforeEdit:(BOOL)self3 duration:(unint64_t)self4;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPosterEdit:(id)edit;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPosterEdit

- (ATXPosterEdit)initWithLockscreenId:(id)id entryPoint:(id)point newlyCreated:(BOOL)created secondsSinceLastEdit:(int64_t)edit
{
  BYTE4(v7) = 0;
  LODWORD(v7) = 0;
  return [ATXPosterEdit initWithLockscreenId:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" entryPoint:id newlyCreated:point secondsSinceLastEdit:created outcome:edit userChangedColor:@"unknown" userChangedFont:0 userChangedNumberingSystem:v7 userChangedPosterContent:-1 userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];
}

- (ATXPosterEdit)initWithLockscreenId:(id)id entryPoint:(id)point newlyCreated:(BOOL)created secondsSinceLastEdit:(int64_t)edit outcome:(id)outcome userChangedColor:(BOOL)color userChangedFont:(BOOL)font userChangedNumberingSystem:(BOOL)self0 userChangedPosterContent:(BOOL)self1 userChangedWidgets:(BOOL)self2 didLockscreenHaveWidgetsBeforeEdit:(BOOL)self3 duration:(unint64_t)self4
{
  idCopy = id;
  pointCopy = point;
  outcomeCopy = outcome;
  v31.receiver = self;
  v31.super_class = ATXPosterEdit;
  v23 = [(ATXPosterEdit *)&v31 init];
  if (v23)
  {
    v24 = [idCopy copy];
    lockscreenId = v23->_lockscreenId;
    v23->_lockscreenId = v24;

    v26 = [pointCopy copy];
    entryPoint = v23->_entryPoint;
    v23->_entryPoint = v26;

    v23->_newlyCreated = created;
    v23->_secondsSinceLastEdit = edit;
    v28 = [outcomeCopy copy];
    outcome = v23->_outcome;
    v23->_outcome = v28;

    v23->_userChangedColor = color;
    v23->_userChangedFont = font;
    v23->_userChangedNumberingSystem = system;
    v23->_userChangedPosterContent = content;
    v23->_userChangedWidgets = widgets;
    v23->_didLockscreenHaveWidgetsBeforeEdit = beforeEdit;
    v23->_duration = duration;
  }

  return v23;
}

- (ATXPosterEdit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockscreenId"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryPoint"];
  v17 = [coderCopy decodeBoolForKey:@"newlyCreated"];
  v16 = [coderCopy decodeIntegerForKey:@"secondsSinceLastEdit"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outcome"];
  v6 = [coderCopy decodeBoolForKey:@"userChangedColor"];
  v7 = [coderCopy decodeBoolForKey:@"userChangedFont"];
  v8 = [coderCopy decodeBoolForKey:@"userChangedNumberingSystem"];
  v9 = [coderCopy decodeBoolForKey:@"userChangedPosterContent"];
  v10 = [coderCopy decodeBoolForKey:@"userChangedWidgets"];
  v11 = [coderCopy decodeBoolForKey:@"didLockscreenHaveWidgetsBeforeEdit"];
  v12 = [coderCopy decodeIntegerForKey:@"duration"];

  BYTE4(v15) = v11;
  BYTE3(v15) = v10;
  BYTE2(v15) = v9;
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [ATXPosterEdit initWithLockscreenId:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" entryPoint:v18 newlyCreated:v4 secondsSinceLastEdit:v17 outcome:v16 userChangedColor:v5 userChangedFont:v6 userChangedNumberingSystem:v15 userChangedPosterContent:v12 userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lockscreenId = [(ATXPosterEdit *)self lockscreenId];
  [coderCopy encodeObject:lockscreenId forKey:@"lockscreenId"];

  entryPoint = [(ATXPosterEdit *)self entryPoint];
  [coderCopy encodeObject:entryPoint forKey:@"entryPoint"];

  [coderCopy encodeBool:-[ATXPosterEdit isNewlyCreated](self forKey:{"isNewlyCreated"), @"newlyCreated"}];
  [coderCopy encodeInteger:-[ATXPosterEdit secondsSinceLastEdit](self forKey:{"secondsSinceLastEdit"), @"secondsSinceLastEdit"}];
  outcome = [(ATXPosterEdit *)self outcome];
  [coderCopy encodeObject:outcome forKey:@"outcome"];

  [coderCopy encodeBool:-[ATXPosterEdit userChangedColor](self forKey:{"userChangedColor"), @"userChangedColor"}];
  [coderCopy encodeBool:-[ATXPosterEdit userChangedFont](self forKey:{"userChangedFont"), @"userChangedFont"}];
  [coderCopy encodeBool:-[ATXPosterEdit userChangedNumberingSystem](self forKey:{"userChangedNumberingSystem"), @"userChangedNumberingSystem"}];
  [coderCopy encodeBool:-[ATXPosterEdit userChangedPosterContent](self forKey:{"userChangedPosterContent"), @"userChangedPosterContent"}];
  [coderCopy encodeBool:-[ATXPosterEdit userChangedWidgets](self forKey:{"userChangedWidgets"), @"userChangedWidgets"}];
  [coderCopy encodeBool:-[ATXPosterEdit didLockscreenHaveWidgetsBeforeEdit](self forKey:{"didLockscreenHaveWidgetsBeforeEdit"), @"didLockscreenHaveWidgetsBeforeEdit"}];
  [coderCopy encodeInteger:-[ATXPosterEdit duration](self forKey:{"duration"), @"duration"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  lockscreenId = [(ATXPosterEdit *)selfCopy lockscreenId];
  v17 = [lockscreenId copy];
  entryPoint = [(ATXPosterEdit *)selfCopy entryPoint];
  v4 = [entryPoint copy];
  isNewlyCreated = [(ATXPosterEdit *)selfCopy isNewlyCreated];
  secondsSinceLastEdit = [(ATXPosterEdit *)selfCopy secondsSinceLastEdit];
  outcome = [(ATXPosterEdit *)selfCopy outcome];
  v6 = [outcome copy];
  userChangedColor = [(ATXPosterEdit *)selfCopy userChangedColor];
  userChangedFont = [(ATXPosterEdit *)selfCopy userChangedFont];
  userChangedNumberingSystem = [(ATXPosterEdit *)selfCopy userChangedNumberingSystem];
  userChangedPosterContent = [(ATXPosterEdit *)selfCopy userChangedPosterContent];
  userChangedWidgets = [(ATXPosterEdit *)selfCopy userChangedWidgets];
  BYTE4(v14) = [(ATXPosterEdit *)selfCopy didLockscreenHaveWidgetsBeforeEdit];
  BYTE3(v14) = userChangedWidgets;
  BYTE2(v14) = userChangedPosterContent;
  BYTE1(v14) = userChangedNumberingSystem;
  LOBYTE(v14) = userChangedFont;
  v12 = [ATXPosterEdit initWithLockscreenId:selfCopy entryPoint:"initWithLockscreenId:entryPoint:newlyCreated:secondsSinceLastEdit:outcome:userChangedColor:userChangedFont:userChangedNumberingSystem:userChangedPosterContent:userChangedWidgets:didLockscreenHaveWidgetsBeforeEdit:duration:" newlyCreated:v17 secondsSinceLastEdit:v4 outcome:isNewlyCreated userChangedColor:secondsSinceLastEdit userChangedFont:v6 userChangedNumberingSystem:userChangedColor userChangedPosterContent:v14 userChangedWidgets:[(ATXPosterEdit *)selfCopy duration] didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterEdit *)self isEqualToATXPosterEdit:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterEdit:(id)edit
{
  editCopy = edit;
  v5 = self->_lockscreenId;
  v6 = v5;
  if (v5 == editCopy[2])
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
  if (v8 == editCopy[3])
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
  if (newlyCreated != [editCopy isNewlyCreated])
  {
    goto LABEL_22;
  }

  secondsSinceLastEdit = self->_secondsSinceLastEdit;
  if (secondsSinceLastEdit != [editCopy secondsSinceLastEdit])
  {
    goto LABEL_22;
  }

  v13 = self->_outcome;
  v14 = v13;
  if (v13 == editCopy[5])
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
  if (userChangedColor != [editCopy userChangedColor])
  {
    goto LABEL_22;
  }

  userChangedFont = self->_userChangedFont;
  if (userChangedFont != [editCopy userChangedFont])
  {
    goto LABEL_22;
  }

  userChangedNumberingSystem = self->_userChangedNumberingSystem;
  if (userChangedNumberingSystem != [editCopy userChangedNumberingSystem])
  {
    goto LABEL_22;
  }

  userChangedPosterContent = self->_userChangedPosterContent;
  if (userChangedPosterContent != [editCopy userChangedPosterContent])
  {
    goto LABEL_22;
  }

  userChangedWidgets = self->_userChangedWidgets;
  if (userChangedWidgets != [editCopy userChangedWidgets])
  {
    goto LABEL_22;
  }

  didLockscreenHaveWidgetsBeforeEdit = self->_didLockscreenHaveWidgetsBeforeEdit;
  if (didLockscreenHaveWidgetsBeforeEdit != [editCopy didLockscreenHaveWidgetsBeforeEdit])
  {
    goto LABEL_22;
  }

  duration = self->_duration;
  v23 = duration == [editCopy duration];
LABEL_23:

  return v23;
}

- (unint64_t)hash
{
  lockscreenId = [(ATXPosterEdit *)self lockscreenId];
  v4 = [lockscreenId hash];

  entryPoint = [(ATXPosterEdit *)self entryPoint];
  v6 = [entryPoint hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXPosterEdit *)self isNewlyCreated];
  v8 = [(ATXPosterEdit *)self secondsSinceLastEdit]- v7 + 32 * v7;
  outcome = [(ATXPosterEdit *)self outcome];
  v10 = [outcome hash] - v8 + 32 * v8;

  v11 = 31 * (31 * v10 + [(ATXPosterEdit *)self userChangedColor]);
  v12 = 31 * (v11 + [(ATXPosterEdit *)self userChangedFont]);
  v13 = 31 * (v12 + [(ATXPosterEdit *)self userChangedNumberingSystem]);
  v14 = 31 * (v13 + [(ATXPosterEdit *)self userChangedPosterContent]);
  v15 = 31 * (v14 + [(ATXPosterEdit *)self userChangedWidgets]);
  v16 = v15 + [(ATXPosterEdit *)self didLockscreenHaveWidgetsBeforeEdit];
  return [(ATXPosterEdit *)self duration]- v16 + 32 * v16;
}

@end