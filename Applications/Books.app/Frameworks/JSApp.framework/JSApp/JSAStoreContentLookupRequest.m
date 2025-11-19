@interface JSAStoreContentLookupRequest
- (NSArray)itemIdentifiers;
- (NSDictionary)requestOptions;
- (void)cancel;
- (void)dealloc;
- (void)send;
- (void)setItemIdentifiers:(id)a3;
- (void)setOnResponse:(id)a3;
- (void)setRequestOptions:(id)a3;
@end

@implementation JSAStoreContentLookupRequest

- (NSDictionary)requestOptions
{
  if (*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions))
  {
    v2 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);

    v3.super.isa = sub_8433C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)setRequestOptions:(id)a3
{
  if (a3)
  {
    v4 = sub_8434C();
  }

  else
  {
    v4 = 0;
  }

  if ((*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v5 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions);
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions) = v4;
  }
}

- (NSArray)itemIdentifiers
{
  v3 = OBJC_IVAR___JSAStoreContentLookupRequest__itemIdentifiers;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;

  sub_634D8(v6);

  v7.super.isa = sub_8458C().super.isa;

  return v7.super.isa;
}

- (void)setItemIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = sub_845AC();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_63B10(v4);
}

- (void)setOnResponse:(id)a3
{
  if ((*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v5 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = a3;
    v4 = a3;
  }
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) == 1)
  {
    v3 = self;
  }

  else
  {
    v4 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = 0;
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for StoreContentLookupRequest();
  [(JSAStoreContentLookupRequest *)&v6 dealloc];
}

- (void)send
{
  v2 = self;
  sub_64568();
}

- (void)cancel
{
  v2 = self;
  sub_6532C();
}

@end