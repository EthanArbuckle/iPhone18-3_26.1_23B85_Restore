@interface CTLazuliChatBotSuggestedAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotSuggestedAction:(id)a3;
- (CTLazuliChatBotSuggestedAction)initWithCoder:(id)a3;
- (CTLazuliChatBotSuggestedAction)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotSuggestedAction

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotSuggestedAction *)self type];
  v8 = [(CTLazuliChatBotSuggestedAction *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", v4, print_CTLazuliSuggestedActionType(&v8)];
  v5 = [(CTLazuliChatBotSuggestedAction *)self suggestion];
  [v3 appendFormat:@", suggestion = %@", v5];

  action = self->_action;
  [v3 appendFormat:@", action {%@} = %@", objc_opt_class(), action];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedAction:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotSuggestedAction *)self type];
  if (v5 == [v4 type] && (-[CTLazuliChatBotSuggestedAction suggestion](self, "suggestion"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "suggestion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToCTLazuliChatBotSuggestion:", v7), v7, v6, (v8 & 1) != 0))
  {
    switch(self->_type)
    {
      case 0:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionOpenUrlInWebView:v10];
        goto LABEL_19;
      case 1:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionOpenUrlInApplication:v10];
        goto LABEL_19;
      case 2:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionComposeText:v10];
        goto LABEL_19;
      case 3:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionComposeAudioRecording:v10];
        goto LABEL_19;
      case 4:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionComposeVideoRecording:v10];
        goto LABEL_19;
      case 5:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionShowLocation:v10];
        goto LABEL_19;
      case 6:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionRequestLocationPush:v10];
        goto LABEL_19;
      case 7:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionCalendar:v10];
        goto LABEL_19;
      case 8:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionDialVideoCall:v10];
        goto LABEL_19;
      case 9:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionDialEnrichedCall:v10];
        goto LABEL_19;
      case 0xALL:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionDialPhoneNumber:v10];
        goto LABEL_19;
      case 0xBLL:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionDevice:v10];
        goto LABEL_19;
      case 0xCLL:
        v9 = [(CTLazuliChatBotSuggestedAction *)self action];
        v10 = [v4 action];
        v11 = [v9 isEqualToCTLazuliSuggestedActionSettings:v10];
LABEL_19:
        v12 = v11;

        break;
      default:
        v12 = 1;
        break;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedAction *)self isEqualToCTLazuliChatBotSuggestedAction:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotSuggestedAction allocWithZone:?];
  [(CTLazuliChatBotSuggestedAction *)v5 setType:self->_type];
  v6 = [(CTLazuliChatBotSuggestion *)self->_suggestion copyWithZone:a3];
  [(CTLazuliChatBotSuggestedAction *)v5 setSuggestion:v6];

  v7 = [self->_action copyWithZone:a3];
  [(CTLazuliChatBotSuggestedAction *)v5 setAction:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [v5 encodeObject:v4 forKey:@"kTypeKey"];

  [v5 encodeObject:self->_suggestion forKey:@"kSuggestionKey"];
  [v5 encodeObject:self->_action forKey:@"kActionKey"];
}

- (CTLazuliChatBotSuggestedAction)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CTLazuliChatBotSuggestedAction;
  v5 = [(CTLazuliChatBotSuggestedAction *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSuggestionKey"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v7;

    v26 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v26 setWithObjects:{v25, v24, v23, v22, v21, v20, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"kActionKey"];
    action = v5->_action;
    v5->_action = v17;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedAction)initWithReflection:(const void *)a3
{
  v34.receiver = self;
  v34.super_class = CTLazuliChatBotSuggestedAction;
  v4 = [(CTLazuliChatBotSuggestedAction *)&v34 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliSuggestedActionType(a3);
    v5 = [[CTLazuliChatBotSuggestion alloc] initWithReflection:a3 + 8];
    suggestion = v4->_suggestion;
    v4->_suggestion = v5;

    switch(*(a3 + 52))
    {
      case 0:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(a3 + 18);
        if (*(a3 + 103) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[0].__r_.__value_.__r.__words[1], *(a3 + 10), *(a3 + 11));
        }

        else
        {
          *&__p[0].__r_.__value_.__r.__words[1] = *(a3 + 5);
          __p[1].__r_.__value_.__r.__words[0] = *(a3 + 12);
        }

        if (*(a3 + 127) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1].__r_.__value_.__r.__words[1], *(a3 + 13), *(a3 + 14));
        }

        else
        {
          *&__p[1].__r_.__value_.__r.__words[1] = *(a3 + 104);
          *&v28 = *(a3 + 15);
        }

        v24 = [[CTLazuliSuggestedActionOpenUrlInWebView alloc] initWithReflection:__p];
        action = v4->_action;
        v4->_action = v24;

        if (SBYTE7(v28) < 0)
        {
          operator delete(__p[1].__r_.__value_.__l.__size_);
        }

        if (__p[1].__r_.__value_.__s.__data_[7] < 0)
        {
          size = __p[0].__r_.__value_.__l.__size_;
          goto LABEL_37;
        }

        return v4;
      case 1:
        memset(__p, 0, 24);
        if (*(a3 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a3 + 9), *(a3 + 10));
        }

        else
        {
          __p[0] = *(a3 + 3);
        }

        v19 = [[CTLazuliSuggestedActionOpenUrlInApplication alloc] initWithReflection:__p];
        goto LABEL_34;
      case 2:
        memset(__p, 0, sizeof(__p));
        if (*(a3 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a3 + 9), *(a3 + 10));
        }

        else
        {
          __p[0] = *(a3 + 3);
        }

        if (*(a3 + 119) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1], *(a3 + 12), *(a3 + 13));
        }

        else
        {
          __p[1] = *(a3 + 4);
        }

        v22 = [[CTLazuliSuggestedActionComposeText alloc] initWithReflection:__p];
        v23 = v4->_action;
        v4->_action = v22;

        if (SHIBYTE(__p[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[1].__r_.__value_.__l.__data_);
        }

        goto LABEL_35;
      case 3:
        memset(__p, 0, 24);
        if (*(a3 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a3 + 9), *(a3 + 10));
        }

        else
        {
          __p[0] = *(a3 + 3);
        }

        v19 = [[CTLazuliSuggestedActionComposeAudioRecording alloc] initWithReflection:__p];
        goto LABEL_34;
      case 4:
        memset(__p, 0, 24);
        if (*(a3 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(a3 + 9), *(a3 + 10));
        }

        else
        {
          __p[0] = *(a3 + 3);
        }

        v19 = [[CTLazuliSuggestedActionComposeVideoRecording alloc] initWithReflection:__p];
LABEL_34:
        v20 = v4->_action;
        v4->_action = v19;

LABEL_35:
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          size = __p[0].__r_.__value_.__r.__words[0];
LABEL_37:
          operator delete(size);
        }

        return v4;
      case 5:
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionShowLocation::SuggestedActionShowLocation(__p, (a3 + 72));
        v12 = [[CTLazuliSuggestedActionShowLocation alloc] initWithReflection:__p];
        v13 = v4->_action;
        v4->_action = v12;

        Lazuli::SuggestedActionShowLocation::~SuggestedActionShowLocation(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 6:
        __p[0].__r_.__value_.__s.__data_[0] = *(a3 + 72);
        v7 = [[CTLazuliSuggestedActionRequestLocationPush alloc] initWithReflection:__p];
        goto LABEL_19;
      case 7:
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        memset(__p, 0, sizeof(__p));
        Lazuli::ChatBotCreateCalendarEvent::ChatBotCreateCalendarEvent(__p, (a3 + 72));
        v10 = [[CTLazuliSuggestedActionCalendar alloc] initWithReflection:__p];
        v11 = v4->_action;
        v4->_action = v10;

        Lazuli::SuggestedActionCalendar::~SuggestedActionCalendar(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 8:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionDialVideoCall::SuggestedActionDialVideoCall(__p, (a3 + 72));
        v17 = [[CTLazuliSuggestedActionDialVideoCall alloc] initWithReflection:__p];
        v18 = v4->_action;
        v4->_action = v17;

        Lazuli::SuggestedActionDialVideoCall::~SuggestedActionDialVideoCall(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 9:
        *&v30 = 0;
        v28 = 0u;
        v29 = 0u;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionDialEnrichedCall::SuggestedActionDialEnrichedCall(__p, (a3 + 72));
        v8 = [[CTLazuliSuggestedActionDialEnrichedCall alloc] initWithReflection:__p];
        v9 = v4->_action;
        v4->_action = v8;

        Lazuli::SuggestedActionDialEnrichedCall::~SuggestedActionDialEnrichedCall(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 0xA:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionDialPhoneNumber::SuggestedActionDialPhoneNumber(__p, (a3 + 72));
        v15 = [[CTLazuliSuggestedActionDialPhoneNumber alloc] initWithReflection:__p];
        v16 = v4->_action;
        v4->_action = v15;

        Lazuli::SuggestedActionDialVideoCall::~SuggestedActionDialVideoCall(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 0xB:
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(a3 + 18);
        v7 = [[CTLazuliSuggestedActionDevice alloc] initWithReflection:__p];
        goto LABEL_19;
      case 0xC:
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(a3 + 18);
        v7 = [[CTLazuliSuggestedActionSettings alloc] initWithReflection:__p];
LABEL_19:
        v14 = v4->_action;
        v4->_action = v7;

        break;
      default:
        return v4;
    }
  }

  return v4;
}

@end