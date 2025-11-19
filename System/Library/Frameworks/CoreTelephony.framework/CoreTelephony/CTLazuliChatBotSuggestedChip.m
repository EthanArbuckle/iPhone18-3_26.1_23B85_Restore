@interface CTLazuliChatBotSuggestedChip
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotSuggestedChip:(id)a3;
- (CTLazuliChatBotSuggestedChip)initWithCoder:(id)a3;
- (CTLazuliChatBotSuggestedChip)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotSuggestedChip

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotSuggestedChip *)self type];
  v7 = [(CTLazuliChatBotSuggestedChip *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", v4, print_CTLazuliSuggestedChipType(&v7)];
  chip = self->_chip;
  [v3 appendFormat:@", chip {%@} = %@", objc_opt_class(), chip];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedChip:(id)a3
{
  v5 = a3;
  v6 = [(CTLazuliChatBotSuggestedChip *)self type];
  if (v6 == [v5 type])
  {
    v7 = [(CTLazuliChatBotSuggestedChip *)self chip];
    if (v7)
    {
    }

    else
    {
      v8 = [v5 chip];

      if (!v8)
      {
        v3 = 1;
        goto LABEL_11;
      }
    }

    v9 = [(CTLazuliChatBotSuggestedChip *)self type];
    if ((v9 + 1) < 2)
    {
      v10 = [(CTLazuliChatBotSuggestedChip *)self chip];
      v11 = [v5 chip];
      v12 = [v10 isEqualToCTLazuliChatBotSuggestedReply:v11];
LABEL_10:
      v3 = v12;

      goto LABEL_11;
    }

    if (v9 == 1)
    {
      v10 = [(CTLazuliChatBotSuggestedChip *)self chip];
      v11 = [v5 chip];
      v12 = [v10 isEqualToCTLazuliChatBotSuggestedAction:v11];
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_11:

  return v3 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedChip *)self isEqualToCTLazuliChatBotSuggestedChip:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotSuggestedChip allocWithZone:?];
  [(CTLazuliChatBotSuggestedChip *)v5 setType:self->_type];
  v6 = [self->_chip copyWithZone:a3];
  [(CTLazuliChatBotSuggestedChip *)v5 setChip:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [v5 encodeObject:v4 forKey:@"kTypeKey"];

  [v5 encodeObject:self->_chip forKey:@"kChipKey"];
}

- (CTLazuliChatBotSuggestedChip)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSuggestedChip;
  v5 = [(CTLazuliChatBotSuggestedChip *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kChipKey"];
    chip = v5->_chip;
    v5->_chip = v11;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedChip)initWithReflection:(const void *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotSuggestedChip;
  v4 = [(CTLazuliChatBotSuggestedChip *)&v13 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(a3);
    v5 = *(a3 + 56);
    if (v5 == 1)
    {
      *&v17 = 0;
      *__p = 0u;
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

      std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](&v15[24], a3 + 2);
      v9 = [[CTLazuliChatBotSuggestedReply alloc] initWithReflection:v15];
      chip = v4->_chip;
      v4->_chip = v9;

      if (v17 == 1 && SHIBYTE(__p[1]) < 0)
      {
        operator delete(*&v15[24]);
      }

      if ((v15[23] & 0x80000000) != 0)
      {
        v8 = *v15;
        goto LABEL_22;
      }
    }

    else if (!v5)
    {
      v19 = 0;
      v17 = 0u;
      memset(v18, 0, sizeof(v18));
      *__p = 0u;
      memset(v15, 0, sizeof(v15));
      *v15 = *(a3 + 2);
      if (*(a3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v15[8], *(a3 + 2), *(a3 + 3));
      }

      else
      {
        *&v15[8] = *(a3 + 1);
        *&v15[24] = *(a3 + 4);
      }

      std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](__p, (a3 + 40));
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v18 + 8, a3 + 80);
      v6 = [[CTLazuliChatBotSuggestedAction alloc] initWithReflection:v15];
      v7 = v4->_chip;
      v4->_chip = v6;

      if (v19 != -1)
      {
        (off_1EF0137C8[v19])(&v14, v18 + 8);
      }

      LODWORD(v19) = -1;
      if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v15[31] & 0x80000000) != 0)
      {
        v8 = *&v15[8];
LABEL_22:
        operator delete(v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

@end