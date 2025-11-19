@interface VOTCustomAction
- (BOOL)isEqual:(id)a3;
- (BOOL)performWithContext:(id)a3;
- (CGPoint)activationPoint;
- (CGRect)iconClassificationFrame;
- (VOTCustomAction)initWithWireDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOTCustomAction

- (VOTCustomAction)initWithWireDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = VOTCustomAction;
  v5 = [(VOTCustomAction *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"CustomActionName"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 objectForKeyedSubscript:@"CustomActionLanguage"];
    v10 = [v9 copy];
    language = v5->_language;
    v5->_language = v10;

    v12 = [v4 objectForKeyedSubscript:@"CustomActionIdentifier"];
    v13 = [v12 copy];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = [v4 objectForKeyedSubscript:@"CustomActionIgnoreWhenVoiceOverTouches"];
    v5->_ignoreWhenVoiceOverTouches = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"CustomActionActivationPoint"];
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

    v21 = [v4 objectForKeyedSubscript:@"CustomActionIconClassificationScreenFrame"];
    v22 = __UIAccessibilitySafeClass();

    [v22 rectValue];
    v5->_iconClassificationFrame.origin.x = v23;
    v5->_iconClassificationFrame.origin.y = v24;
    v5->_iconClassificationFrame.size.width = v25;
    v5->_iconClassificationFrame.size.height = v26;

    v27 = [v4 objectForKeyedSubscript:@"CustomActionRequiresIconClassification"];
    v28 = __UIAccessibilitySafeClass();

    v5->_requiresIconClassificationForLabel = [v28 BOOLValue];
    v29 = [v4 objectForKeyedSubscript:@"CustomActionCategoryName"];
    [(VOTCustomAction *)v5 setCategoryName:v29];

    v30 = [v4 objectForKeyedSubscript:@"CustomActionSortPriority"];
    v31 = __UIAccessibilitySafeClass();

    -[VOTCustomAction setSortPriority:](v5, "setSortPriority:", [v31 unsignedIntegerValue]);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && -[NSString isEqual:](self->_name, "isEqual:", *(v4 + 1)) && -[NSString isEqual:](self->_identifier, "isEqual:", *(v4 + 2)) && self->_ignoreWhenVoiceOverTouches == v4[24];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  ignoreWhenVoiceOverTouches = self->_ignoreWhenVoiceOverTouches;
  v6 = [(VOTCustomAction *)self categoryName];
  v7 = ignoreWhenVoiceOverTouches ^ [v6 hash];

  return v4 ^ v7;
}

- (BOOL)performWithContext:(id)a3
{
  v4 = [a3 actionElement];
  LOBYTE(self) = [v4 performCustomActionWithIdentifier:self->_identifier];

  return self;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = VOTCustomAction;
  v3 = [(VOTCustomAction *)&v10 description];
  v4 = [(VOTCustomAction *)self name];
  v5 = [(VOTCustomAction *)self categoryName];
  v6 = v5;
  v7 = &stru_1001CBF90;
  if (v5)
  {
    v7 = v5;
  }

  v8 = [NSString stringWithFormat:@"%@, %@:%@", v3, v4, v7];

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