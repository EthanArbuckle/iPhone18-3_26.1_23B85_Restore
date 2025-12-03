@interface _CNiOSPersonMainStoreFetcher
- (_BYTE)initWithAddressBook:(void *)book environment:(char)environment shouldReturnMatchInfo:;
- (id)executeFetchRequest:(id)request error:(id *)error;
@end

@implementation _CNiOSPersonMainStoreFetcher

- (id)executeFetchRequest:(id)request error:(id *)error
{
  shouldReturnMatchInfo = self->_shouldReturnMatchInfo;
  if (self->_shouldReturnMatchInfo)
  {
    v6 = &v12;
  }

  else
  {
    v6 = 0;
  }

  if (shouldReturnMatchInfo)
  {
    v12 = 0;
  }

  v7 = [CNiOSPersonFetcher peopleForFetchRequest:request matchInfos:v6 inAddressBook:self->_addressBook environment:self->_environment error:error];
  if (shouldReturnMatchInfo)
  {
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(CNiOSPersonFetchResult);
  [(CNiOSPersonFetchResult *)v9 setPeople:v7];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  [(CNiOSPersonFetchResult *)v9 setMatchInfos:v10];

  return v9;
}

- (_BYTE)initWithAddressBook:(void *)book environment:(char)environment shouldReturnMatchInfo:
{
  bookCopy = book;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = _CNiOSPersonMainStoreFetcher;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      *(v9 + 1) = a2;
      objc_storeStrong(v9 + 2, book);
      self[24] = environment;
    }
  }

  return self;
}

@end