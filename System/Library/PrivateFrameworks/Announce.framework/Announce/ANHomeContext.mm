@interface ANHomeContext
- (ANHomeContext)init;
- (ANHomeContext)initWithCoder:(id)a3;
- (BOOL)isEmpty;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANHomeContext

- (ANHomeContext)init
{
  v6.receiver = self;
  v6.super_class = ANHomeContext;
  v2 = [(ANHomeContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(ANHomeContext *)v2 setHomeName:&stru_2836DAA20];
    v4 = MEMORY[0x277CBEBF8];
    [(ANHomeContext *)v3 setZoneNames:MEMORY[0x277CBEBF8]];
    [(ANHomeContext *)v3 setRoomNames:v4];
  }

  return v3;
}

- (BOOL)isEmpty
{
  v3 = [(ANHomeContext *)self homeName];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ANHomeContext *)self zoneNames];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(ANHomeContext *)self roomNames];
      v4 = [v6 count] == 0;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANHomeContext *)self homeName];
  v5 = [(ANHomeContext *)self zoneNames];
  v6 = [v5 description];
  v7 = [(ANHomeContext *)self roomNames];
  v8 = [v7 description];
  v9 = [v3 stringWithFormat:@"Home Name: %@, Zone Names: %@, Room Names: %@", v4, v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANHomeContext *)self homeName];
  [v4 encodeObject:v5 forKey:@"home"];

  v6 = [(ANHomeContext *)self zoneNames];
  [v4 encodeObject:v6 forKey:@"zones"];

  v7 = [(ANHomeContext *)self roomNames];
  [v4 encodeObject:v7 forKey:@"rooms"];
}

- (ANHomeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ANHomeContext;
  v5 = [(ANHomeContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    [(ANHomeContext *)v5 setHomeName:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"zones"];
    [(ANHomeContext *)v5 setZoneNames:v10];

    v11 = [v4 decodeObjectOfClasses:v9 forKey:@"rooms"];
    [(ANHomeContext *)v5 setRoomNames:v11];
  }

  return v5;
}

@end