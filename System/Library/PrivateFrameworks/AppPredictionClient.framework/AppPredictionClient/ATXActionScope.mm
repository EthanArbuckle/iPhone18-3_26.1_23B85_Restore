@interface ATXActionScope
- (ATXActionScope)initWithAppIdentifier:(id)identifier appEntityKeyValueMapping:(id)mapping actionType:(unint64_t)type intentClassName:(id)name error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActionScope:(id)scope;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ATXActionScope

- (ATXActionScope)initWithAppIdentifier:(id)identifier appEntityKeyValueMapping:(id)mapping actionType:(unint64_t)type intentClassName:(id)name error:(id *)error
{
  identifierCopy = identifier;
  mappingCopy = mapping;
  nameCopy = name;
  v16 = nameCopy;
  if (type != 8 || identifierCopy || mappingCopy || nameCopy)
  {
    v25.receiver = self;
    v25.super_class = ATXActionScope;
    v18 = [(ATXActionScope *)&v25 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_appIdentifier, identifier);
      v20 = [mappingCopy copy];
      appEntityKeyValueMapping = v19->_appEntityKeyValueMapping;
      v19->_appEntityKeyValueMapping = v20;

      v19->_actionType = type;
      v22 = [v16 copy];
      intentClassName = v19->_intentClassName;
      v19->_intentClassName = v22;
    }

    self = v19;
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:3 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  appIdentifier = [(ATXActionScope *)self appIdentifier];
  v4 = [appIdentifier hash];

  appEntityKeyValueMapping = [(ATXActionScope *)self appEntityKeyValueMapping];
  v6 = [appEntityKeyValueMapping hash] - v4 + 32 * v4;

  v7 = [(ATXActionScope *)self actionType]- v6 + 32 * v6;
  intentClassName = [(ATXActionScope *)self intentClassName];
  v9 = [intentClassName hash] - v7 + 32 * v7;

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionScope *)self isEqualToATXActionScope:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActionScope:(id)scope
{
  scopeCopy = scope;
  v5 = self->_appIdentifier;
  v6 = v5;
  if (v5 == scopeCopy[1])
  {
  }

  else
  {
    v7 = [(ATXAppIdentity *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = self->_appEntityKeyValueMapping;
  v9 = v8;
  if (v8 == scopeCopy[2])
  {
  }

  else
  {
    v10 = [(NSDictionary *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  actionType = self->_actionType;
  if (actionType != [scopeCopy actionType])
  {
LABEL_12:
    v14 = 0;
    goto LABEL_15;
  }

  v12 = self->_intentClassName;
  v13 = v12;
  if (v12 == scopeCopy[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];
  }

LABEL_15:
  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  appIdentifier = [(ATXActionScope *)self appIdentifier];
  appEntityKeyValueMapping = [(ATXActionScope *)self appEntityKeyValueMapping];
  v6 = [ATXActionPredictionTypes actionTypeToString:[(ATXActionScope *)self actionType]];
  intentClassName = [(ATXActionScope *)self intentClassName];
  v8 = [v3 stringWithFormat:@"ATXActionScope: %@, %@, %@, %@", appIdentifier, appEntityKeyValueMapping, v6, intentClassName];

  return v8;
}

@end