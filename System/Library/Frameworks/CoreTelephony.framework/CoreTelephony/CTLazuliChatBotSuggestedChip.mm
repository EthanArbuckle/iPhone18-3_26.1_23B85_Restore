@interface CTLazuliChatBotSuggestedChip
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSuggestedChip:(id)chip;
- (CTLazuliChatBotSuggestedChip)initWithCoder:(id)coder;
- (CTLazuliChatBotSuggestedChip)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotSuggestedChip

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  type = [(CTLazuliChatBotSuggestedChip *)self type];
  type2 = [(CTLazuliChatBotSuggestedChip *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliSuggestedChipType(&type2)];
  chip = self->_chip;
  [v3 appendFormat:@", chip {%@} = %@", objc_opt_class(), chip];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedChip:(id)chip
{
  chipCopy = chip;
  type = [(CTLazuliChatBotSuggestedChip *)self type];
  if (type == [chipCopy type])
  {
    chip = [(CTLazuliChatBotSuggestedChip *)self chip];
    if (chip)
    {
    }

    else
    {
      chip2 = [chipCopy chip];

      if (!chip2)
      {
        v3 = 1;
        goto LABEL_11;
      }
    }

    type2 = [(CTLazuliChatBotSuggestedChip *)self type];
    if ((type2 + 1) < 2)
    {
      chip3 = [(CTLazuliChatBotSuggestedChip *)self chip];
      chip4 = [chipCopy chip];
      v12 = [chip3 isEqualToCTLazuliChatBotSuggestedReply:chip4];
LABEL_10:
      v3 = v12;

      goto LABEL_11;
    }

    if (type2 == 1)
    {
      chip3 = [(CTLazuliChatBotSuggestedChip *)self chip];
      chip4 = [chipCopy chip];
      v12 = [chip3 isEqualToCTLazuliChatBotSuggestedAction:chip4];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedChip *)self isEqualToCTLazuliChatBotSuggestedChip:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSuggestedChip allocWithZone:?];
  [(CTLazuliChatBotSuggestedChip *)v5 setType:self->_type];
  v6 = [self->_chip copyWithZone:zone];
  [(CTLazuliChatBotSuggestedChip *)v5 setChip:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];

  [coderCopy encodeObject:self->_chip forKey:@"kChipKey"];
}

- (CTLazuliChatBotSuggestedChip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSuggestedChip;
  v5 = [(CTLazuliChatBotSuggestedChip *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kChipKey"];
    chip = v5->_chip;
    v5->_chip = v11;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedChip)initWithReflection:(const void *)reflection
{
  v20 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotSuggestedChip;
  v4 = [(CTLazuliChatBotSuggestedChip *)&v13 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(reflection);
    v5 = *(reflection + 56);
    if (v5 == 1)
    {
      *&v17 = 0;
      *__p = 0u;
      memset(v15, 0, sizeof(v15));
      if (*(reflection + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v15, *(reflection + 1), *(reflection + 2));
      }

      else
      {
        *v15 = *(reflection + 8);
        *&v15[16] = *(reflection + 3);
      }

      std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](&v15[24], reflection + 2);
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
      *v15 = *(reflection + 2);
      if (*(reflection + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v15[8], *(reflection + 2), *(reflection + 3));
      }

      else
      {
        *&v15[8] = *(reflection + 1);
        *&v15[24] = *(reflection + 4);
      }

      std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](__p, (reflection + 40));
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v18 + 8, reflection + 80);
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