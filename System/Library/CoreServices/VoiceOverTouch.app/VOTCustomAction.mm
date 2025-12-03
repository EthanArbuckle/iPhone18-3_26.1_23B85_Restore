@interface VOTCustomAction
- (BOOL)isEqual:(id)equal;
- (BOOL)performWithContext:(id)context;
- (CGPoint)activationPoint;
- (CGRect)iconClassificationFrame;
- (VOTCustomAction)initWithWireDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOTCustomAction

- (VOTCustomAction)initWithWireDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = VOTCustomAction;
  v5 = [(VOTCustomAction *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionName"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionLanguage"];
    v10 = [v9 copy];
    language = v5->_language;
    v5->_language = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionIdentifier"];
    v13 = [v12 copy];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionIgnoreWhenVoiceOverTouches"];
    v5->_ignoreWhenVoiceOverTouches = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionActivationPoint"];
    if (v16)
    {
      TypeID = AXValueGetTypeID();
      if (TypeID == CFGetTypeID(v16))
      {
        AXValueGetValue(v16, kAXValueTypeCGPoint, &v5->_activationPoint);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = __UIAccessibilitySafeClass();
          [v18 pointValue];
          v5->_activationPoint.x = v19;
          v5->_activationPoint.y = v20;
        }
      }
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionIconClassificationScreenFrame"];
    v22 = __UIAccessibilitySafeClass();

    [v22 rectValue];
    v5->_iconClassificationFrame.origin.x = v23;
    v5->_iconClassificationFrame.origin.y = v24;
    v5->_iconClassificationFrame.size.width = v25;
    v5->_iconClassificationFrame.size.height = v26;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionRequiresIconClassification"];
    v28 = __UIAccessibilitySafeClass();

    v5->_requiresIconClassificationForLabel = [v28 BOOLValue];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionCategoryName"];
    [(VOTCustomAction *)v5 setCategoryName:v29];

    v30 = [dictionaryCopy objectForKeyedSubscript:@"CustomActionSortPriority"];
    v31 = __UIAccessibilitySafeClass();

    -[VOTCustomAction setSortPriority:](v5, "setSortPriority:", [v31 unsignedIntegerValue]);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", *(equalCopy + 1)) && -[NSString isEqual:](self->_identifier, "isEqual:", *(equalCopy + 2)) && self->_ignoreWhenVoiceOverTouches == equalCopy[24];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  ignoreWhenVoiceOverTouches = self->_ignoreWhenVoiceOverTouches;
  categoryName = [(VOTCustomAction *)self categoryName];
  v7 = ignoreWhenVoiceOverTouches ^ [categoryName hash];

  return v4 ^ v7;
}

- (BOOL)performWithContext:(id)context
{
  actionElement = [context actionElement];
  LOBYTE(self) = [actionElement performCustomActionWithIdentifier:self->_identifier];

  return self;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = VOTCustomAction;
  v3 = [(VOTCustomAction *)&v10 description];
  name = [(VOTCustomAction *)self name];
  categoryName = [(VOTCustomAction *)self categoryName];
  v6 = categoryName;
  v7 = &stru_1001CBF90;
  if (categoryName)
  {
    v7 = categoryName;
  }

  v8 = [NSString stringWithFormat:@"%@, %@:%@", v3, name, v7];

  return v8;
}

- (CGPoint)activationPoint
{
  x = self->_activationPoint.x;
  y = self->_activationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)iconClassificationFrame
{
  x = self->_iconClassificationFrame.origin.x;
  y = self->_iconClassificationFrame.origin.y;
  width = self->_iconClassificationFrame.size.width;
  height = self->_iconClassificationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end