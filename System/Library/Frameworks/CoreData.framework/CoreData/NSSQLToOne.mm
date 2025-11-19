@interface NSSQLToOne
- (id)columnName;
- (id)description;
- (id)initForReadOnlyFetchWithEntity:(id)a3 propertyDescription:(id)a4;
- (void)_setForeignOrderKey:(id)a3;
- (void)copyValuesForReadOnlyFetch:(id)a3;
- (void)dealloc;
- (void)initWithEntity:(uint64_t)a3 propertyDescription:(void *)a4 virtualForToMany:;
@end

@implementation NSSQLToOne

- (id)columnName
{
  v2 = [(NSSQLToOne *)self foreignKey];

  return [v2 columnName];
}

- (void)dealloc
{
  self->_foreignKey = 0;

  self->_foreignEntityKey = 0;
  self->_foreignOrderKey = 0;
  v3.receiver = self;
  v3.super_class = NSSQLToOne;
  [(NSSQLRelationship *)&v3 dealloc];
}

- (void)initWithEntity:(uint64_t)a3 propertyDescription:(void *)a4 virtualForToMany:
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
  v21.super_class = NSSQLToOne;
  v6 = objc_msgSendSuper2(&v21, sel_initWithEntity_propertyDescription_, a2, a3);
  if (v6)
  {
    if (a4)
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [a4 sourceEntity];
      if (v8)
      {
        v9 = *(v8 + 184);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v7 initWithFormat:@"%d%@", v9, objc_msgSend(a4, "name")];
      v11 = v6[5];
      if (v11 != v10)
      {

        v6[5] = [v10 copy];
      }

      *(v6 + 88) = 1;
    }

    if (v6[11])
    {
      v12 = -1;
    }

    else
    {
      if (a2 && (v13 = *(a2 + 24)) != 0)
      {
        v14 = *(v13 + 104);
      }

      else
      {
        v14 = 0;
      }

      v15 = [v14 fastIndexForKnownKey:{objc_msgSend(v6, "name")}];
      if (a2)
      {
        v16 = *(a2 + 192);
      }

      else
      {
        v16 = 0;
      }

      v12 = v15 - v16;
    }

    *(v6 + 14) = v12;
    *(v6 + 24) = 7;
    v17 = [[NSSQLForeignKey alloc] initWithEntity:a2 toOneRelationship:v6];
    v6[8] = v17;
    v18 = [v6 destinationEntity];
    if (v18)
    {
      v19 = *(v18 + 152);
      if (v19)
      {
        if ([v19 count])
        {
          v6[9] = [[NSSQLForeignEntityKey alloc] initWithEntity:a2 foreignKey:v17];
        }
      }
    }
  }

  return v6;
}

- (id)initForReadOnlyFetchWithEntity:(id)a3 propertyDescription:(id)a4
{
  v10.receiver = self;
  v10.super_class = NSSQLToOne;
  v6 = [NSSQLRelationship initForReadOnlyFetchWithEntity:sel_initForReadOnlyFetchWithEntity_propertyDescription_ propertyDescription:?];
  v7 = v6;
  if (v6)
  {
    v6[24] = 7;
    v8 = [[NSSQLForeignKey alloc] initForReadOnlyFetchingOfEntity:a3 toOneRelationship:v6];
    if ([a4 _propertyType] == 4 && v8)
    {
      v8[1] = a4;
    }

    v7[8] = v8;
    v7[9] = [[NSSQLForeignEntityKey alloc] initForReadOnlyFetchingOfEntity:a3 toOneRelationship:v7];
    v7[10] = [[NSSQLForeignOrderKey alloc] initForReadOnlyFetchingOfEntity:a3 toOneRelationship:v7];
  }

  return v7;
}

- (void)_setForeignOrderKey:(id)a3
{
  foreignOrderKey = self->_foreignOrderKey;
  if (foreignOrderKey != a3)
  {

    self->_foreignOrderKey = a3;
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@ %@ (%@)>", NSStringFromClass(v5), -[NSSQLRelationship name](self, "name"), objc_msgSend(-[NSSQLRelationship destinationEntity](self, "destinationEntity"), "name")];
  objc_autoreleasePoolPop(v3);

  return v6;
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v10.receiver = self;
  v10.super_class = NSSQLToOne;
  [(NSSQLRelationship *)&v10 copyValuesForReadOnlyFetch:?];
  v5 = objc_alloc_init(NSSQLForeignKey);
  self->_foreignKey = v5;
  -[NSSQLForeignKey copyValuesForReadOnlyFetch:](v5, "copyValuesForReadOnlyFetch:", [a3 foreignKey]);
  foreignKey = self->_foreignKey;
  v7 = [(NSSQLProperty *)self propertyDescription];
  if (foreignKey)
  {
    foreignKey->super.super._propertyDescription = v7;
  }

  if (a3)
  {
    if (*(a3 + 9))
    {
      v8 = objc_alloc_init(NSSQLForeignEntityKey);
      self->_foreignEntityKey = v8;
      [(NSSQLForeignEntityKey *)v8 copyValuesForReadOnlyFetch:*(a3 + 9)];
    }

    if (*(a3 + 10))
    {
      v9 = objc_alloc_init(NSSQLForeignOrderKey);
      self->_foreignOrderKey = v9;
      [(NSSQLForeignOrderKey *)v9 copyValuesForReadOnlyFetch:*(a3 + 10)];
    }
  }
}

@end