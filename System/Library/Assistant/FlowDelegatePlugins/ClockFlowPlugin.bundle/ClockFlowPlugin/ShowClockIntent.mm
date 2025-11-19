@interface ShowClockIntent
- (ShowClockIntent)init;
- (ShowClockIntent)initWithCoder:(id)a3;
- (ShowClockIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (ShowClockIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation ShowClockIntent

- (ShowClockIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowClockIntent();
  return [(ShowClockIntent *)&v3 init];
}

- (ShowClockIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowClockIntent();
  v4 = a3;
  v5 = [(ShowClockIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (ShowClockIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_155A0();
    v6 = a4;
    v7 = sub_15590();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ShowClockIntent();
  v9 = [(ShowClockIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (ShowClockIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_15560();
    v8 = a3;
    v9 = a4;
    v10.super.isa = sub_15550().super.isa;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ShowClockIntent();
  v13 = [(ShowClockIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10.super.isa];

  return v13;
}

@end