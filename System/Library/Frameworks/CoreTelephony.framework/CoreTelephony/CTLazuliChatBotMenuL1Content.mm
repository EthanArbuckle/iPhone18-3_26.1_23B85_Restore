@interface CTLazuliChatBotMenuL1Content
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMenuL1Content:(id)a3;
- (CTLazuliChatBotMenuL1Content)initWithCoder:(id)a3;
- (CTLazuliChatBotMenuL1Content)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotMenuL1Content

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMenuL1Content *)self type];
  v7 = [(CTLazuliChatBotMenuL1Content *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", v4, print_CTLazuliMenuL1ContentType(&v7)];
  item = self->_item;
  [v3 appendFormat:@", item {%@} = %@", objc_opt_class(), item];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL1Content:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotMenuL1Content *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(CTLazuliChatBotMenuL1Content *)self type];
    if (v6 == 1)
    {
      v7 = [v4 item];
      v8 = [(CTLazuliChatBotMenuL1Content *)self item];
      v9 = [v7 isEqualToCTLazuliChatBotMenuL2:v8];
    }

    else
    {
      if (v6)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v7 = [v4 item];
      v8 = [(CTLazuliChatBotMenuL1Content *)self item];
      v9 = [v7 isEqualToCTLazuliChatBotSuggestedChip:v8];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL1Content *)self isEqualToCTLazuliChatBotMenuL1Content:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMenuL1Content allocWithZone:?];
  [(CTLazuliChatBotMenuL1Content *)v5 setType:self->_type];
  v6 = [self->_item copyWithZone:a3];
  [(CTLazuliChatBotMenuL1Content *)v5 setItem:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [v5 encodeObject:v4 forKey:@"kTypeKey"];

  [v5 encodeObject:self->_item forKey:@"kItemKey"];
}

- (CTLazuliChatBotMenuL1Content)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1Content;
  v5 = [(CTLazuliChatBotMenuL1Content *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kItemKey"];
    item = v5->_item;
    v5->_item = v11;
  }

  return v5;
}

- (CTLazuliChatBotMenuL1Content)initWithReflection:(const void *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotMenuL1Content;
  v4 = [(CTLazuliChatBotMenuL1Content *)&v13 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(a3);
    v5 = *(a3 + 60);
    if (v5 == 1)
    {
      v16 = 0u;
      memset(v15, 0, sizeof(v15));
      if (*(a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v15, *(a3 + 1), *(a3 + 2));
      }

      else
      {
        *v15 = *(a3 + 8);
        *&v15[16] = *(a3 + 3);
      }

      *&v15[24] = 0;
      v16 = 0uLL;
      std::vector<Lazuli::ChatBotMenuL2Content>::__init_with_size[abi:nn200100]<Lazuli::ChatBotMenuL2Content*,Lazuli::ChatBotMenuL2Content*>(&v15[24], *(a3 + 4), *(a3 + 5), 0x34F72C234F72C235 * ((*(a3 + 5) - *(a3 + 4)) >> 3));
      v9 = [[CTLazuliChatBotMenuL2 alloc] initWithReflection:v15];
      item = v4->_item;
      v4->_item = v9;

      v14 = &v15[24];
      std::vector<Lazuli::ChatBotMenuL2Content>::__destroy_vector::operator()[abi:nn200100](&v14);
      if ((v15[23] & 0x80000000) != 0)
      {
        operator delete(*v15);
      }
    }

    else if (!v5)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v6 = *(a3 + 2);
      memset(v15, 0, sizeof(v15));
      *v15 = v6;
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](&v15[8], a3 + 16);
      v7 = [[CTLazuliChatBotSuggestedChip alloc] initWithReflection:v15];
      v8 = v4->_item;
      v4->_item = v7;

      if (v28 != -1)
      {
        (off_1EF013898[v28])(&v14, &v15[8]);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

@end