@interface _CNiOSPersonMainStoreFetcher
- (_BYTE)initWithAddressBook:(void *)a3 environment:(char)a4 shouldReturnMatchInfo:;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation _CNiOSPersonMainStoreFetcher

- (id)executeFetchRequest:(id)a3 error:(id *)a4
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

  v7 = [CNiOSPersonFetcher peopleForFetchRequest:a3 matchInfos:v6 inAddressBook:self->_addressBook environment:self->_environment error:a4];
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

- (_BYTE)initWithAddressBook:(void *)a3 environment:(char)a4 shouldReturnMatchInfo:
{
  v8 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _CNiOSPersonMainStoreFetcher;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      *(v9 + 1) = a2;
      objc_storeStrong(v9 + 2, a3);
      a1[24] = a4;
    }
  }

  return a1;
}

@end