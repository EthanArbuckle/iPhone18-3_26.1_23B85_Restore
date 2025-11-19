@interface AnyDialog.RemoteDialogResult
- (NSData)visualResponse;
- (NSDictionary)meta;
- (NSDictionary)visualParameters;
- (NSString)catId;
- (NSString)visualId;
- (void)setCaptionPrint:(id)a3;
- (void)setCaptionSpeak:(id)a3;
- (void)setCatId:(id)a3;
- (void)setDialogId:(id)a3;
- (void)setMeta:(id)a3;
- (void)setPrint:(id)a3;
- (void)setSpeak:(id)a3;
- (void)setVisualId:(id)a3;
- (void)setVisualParameters:(id)a3;
- (void)setVisualResponse:(id)a3;
@end

@implementation AnyDialog.RemoteDialogResult

- (NSString)catId
{
  sub_221B0FF0C();
  v2 = sub_221BCD358();

  return v2;
}

- (void)setCatId:(id)a3
{
  v4 = sub_221BCD388();
  v6 = v5;
  v7 = self;
  sub_221B0FFB8(v4, v6);
}

- (void)setCaptionSpeak:(id)a3
{
  v4 = sub_221BCD668();
  v5 = self;
  sub_221B10064(v4);
}

- (void)setCaptionPrint:(id)a3
{
  v4 = sub_221BCD668();
  v5 = self;
  sub_221B1010C(v4);
}

- (void)setDialogId:(id)a3
{
  v4 = sub_221BCD668();
  v5 = self;
  sub_221B101B4(v4);
}

- (NSDictionary)meta
{
  sub_221B1022C();
  v2 = sub_221BCD278();

  return v2;
}

- (void)setMeta:(id)a3
{
  v4 = sub_221BCD298();
  v5 = self;
  sub_221B102B0(v4);
}

- (void)setPrint:(id)a3
{
  v4 = sub_221BCD668();
  v5 = self;
  sub_221B10358(v4);
}

- (void)setSpeak:(id)a3
{
  v4 = sub_221BCD668();
  v5 = self;
  sub_221B104B0(v4);
}

- (NSString)visualId
{
  sub_221B106CC();
  if (v2)
  {
    v3 = sub_221BCD358();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVisualId:(id)a3
{
  if (a3)
  {
    v4 = sub_221BCD388();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_221B10788(v4, v6);
}

- (NSDictionary)visualParameters
{
  if (sub_221B10810())
  {
    v2 = sub_221BCD278();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setVisualParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_221BCD298();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_221B108A0(v4);
}

- (NSData)visualResponse
{
  v2 = sub_221B10928();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4 = sub_221BCC448();
    sub_2219EC02C(v5, v6);
  }

  return v4;
}

- (void)setVisualResponse:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_221BCC468();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_221B109F0(v3, v7);
}

@end