@interface ATXActionScope
- (ATXActionScope)initWithAppIdentifier:(id)a3 appEntityKeyValueMapping:(id)a4 actionType:(unint64_t)a5 intentClassName:(id)a6 error:(id *)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActionScope:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ATXActionScope

- (ATXActionScope)initWithAppIdentifier:(id)a3 appEntityKeyValueMapping:(id)a4 actionType:(unint64_t)a5 intentClassName:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = v15;
  if (a5 != 8 || v13 || v14 || v15)
  {
    v25.receiver = self;
    v25.super_class = ATXActionScope;
    v18 = [(ATXActionScope *)&v25 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_appIdentifier, a3);
      v20 = [v14 copy];
      appEntityKeyValueMapping = v19->_appEntityKeyValueMapping;
      v19->_appEntityKeyValueMapping = v20;

      v19->_actionType = a5;
      v22 = [v16 copy];
      intentClassName = v19->_intentClassName;
      v19->_intentClassName = v22;
    }

    self = v19;
    v17 = self;
  }

  else if (a7)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:3 userInfo:0];
    *a7 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(ATXActionScope *)self appIdentifier];
  v4 = [v3 hash];

  v5 = [(ATXActionScope *)self appEntityKeyValueMapping];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXActionScope *)self actionType]- v6 + 32 * v6;
  v8 = [(ATXActionScope *)self intentClassName];
  v9 = [v8 hash] - v7 + 32 * v7;

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionScope *)self isEqualToATXActionScope:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActionScope:(id)a3
{
  v4 = a3;
  v5 = self->_appIdentifier;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (actionType != [v4 actionType])
  {
LABEL_12:
    v14 = 0;
    goto LABEL_15;
  }

  v12 = self->_intentClassName;
  v13 = v12;
  if (v12 == v4[4])
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
  v4 = [(ATXActionScope *)self appIdentifier];
  v5 = [(ATXActionScope *)self appEntityKeyValueMapping];
  v6 = [ATXActionPredictionTypes actionTypeToString:[(ATXActionScope *)self actionType]];
  v7 = [(ATXActionScope *)self intentClassName];
  v8 = [v3 stringWithFormat:@"ATXActionScope: %@, %@, %@, %@", v4, v5, v6, v7];

  return v8;
}

@end