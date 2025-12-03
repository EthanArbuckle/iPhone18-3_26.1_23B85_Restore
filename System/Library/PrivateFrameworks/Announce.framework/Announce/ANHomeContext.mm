@interface ANHomeContext
- (ANHomeContext)init;
- (ANHomeContext)initWithCoder:(id)coder;
- (BOOL)isEmpty;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  homeName = [(ANHomeContext *)self homeName];
  if ([homeName length])
  {
    v4 = 0;
  }

  else
  {
    zoneNames = [(ANHomeContext *)self zoneNames];
    if ([zoneNames count])
    {
      v4 = 0;
    }

    else
    {
      roomNames = [(ANHomeContext *)self roomNames];
      v4 = [roomNames count] == 0;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  homeName = [(ANHomeContext *)self homeName];
  zoneNames = [(ANHomeContext *)self zoneNames];
  v6 = [zoneNames description];
  roomNames = [(ANHomeContext *)self roomNames];
  v8 = [roomNames description];
  v9 = [v3 stringWithFormat:@"Home Name: %@, Zone Names: %@, Room Names: %@", homeName, v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homeName = [(ANHomeContext *)self homeName];
  [coderCopy encodeObject:homeName forKey:@"home"];

  zoneNames = [(ANHomeContext *)self zoneNames];
  [coderCopy encodeObject:zoneNames forKey:@"zones"];

  roomNames = [(ANHomeContext *)self roomNames];
  [coderCopy encodeObject:roomNames forKey:@"rooms"];
}

- (ANHomeContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ANHomeContext;
  v5 = [(ANHomeContext *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    [(ANHomeContext *)v5 setHomeName:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"zones"];
    [(ANHomeContext *)v5 setZoneNames:v10];

    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rooms"];
    [(ANHomeContext *)v5 setRoomNames:v11];
  }

  return v5;
}

@end