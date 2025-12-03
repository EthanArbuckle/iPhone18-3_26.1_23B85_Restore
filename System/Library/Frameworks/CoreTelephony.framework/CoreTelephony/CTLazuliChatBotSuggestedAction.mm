@interface CTLazuliChatBotSuggestedAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSuggestedAction:(id)action;
- (CTLazuliChatBotSuggestedAction)initWithCoder:(id)coder;
- (CTLazuliChatBotSuggestedAction)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotSuggestedAction

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  type = [(CTLazuliChatBotSuggestedAction *)self type];
  type2 = [(CTLazuliChatBotSuggestedAction *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliSuggestedActionType(&type2)];
  suggestion = [(CTLazuliChatBotSuggestedAction *)self suggestion];
  [v3 appendFormat:@", suggestion = %@", suggestion];

  action = self->_action;
  [v3 appendFormat:@", action {%@} = %@", objc_opt_class(), action];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedAction:(id)action
{
  actionCopy = action;
  type = [(CTLazuliChatBotSuggestedAction *)self type];
  if (type == [actionCopy type] && (-[CTLazuliChatBotSuggestedAction suggestion](self, "suggestion"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(actionCopy, "suggestion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToCTLazuliChatBotSuggestion:", v7), v7, v6, (v8 & 1) != 0))
  {
    switch(self->_type)
    {
      case 0:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionOpenUrlInWebView:action2];
        goto LABEL_19;
      case 1:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionOpenUrlInApplication:action2];
        goto LABEL_19;
      case 2:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionComposeText:action2];
        goto LABEL_19;
      case 3:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionComposeAudioRecording:action2];
        goto LABEL_19;
      case 4:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionComposeVideoRecording:action2];
        goto LABEL_19;
      case 5:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionShowLocation:action2];
        goto LABEL_19;
      case 6:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionRequestLocationPush:action2];
        goto LABEL_19;
      case 7:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionCalendar:action2];
        goto LABEL_19;
      case 8:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionDialVideoCall:action2];
        goto LABEL_19;
      case 9:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionDialEnrichedCall:action2];
        goto LABEL_19;
      case 0xALL:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionDialPhoneNumber:action2];
        goto LABEL_19;
      case 0xBLL:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionDevice:action2];
        goto LABEL_19;
      case 0xCLL:
        action = [(CTLazuliChatBotSuggestedAction *)self action];
        action2 = [actionCopy action];
        v11 = [action isEqualToCTLazuliSuggestedActionSettings:action2];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedAction *)self isEqualToCTLazuliChatBotSuggestedAction:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSuggestedAction allocWithZone:?];
  [(CTLazuliChatBotSuggestedAction *)v5 setType:self->_type];
  v6 = [(CTLazuliChatBotSuggestion *)self->_suggestion copyWithZone:zone];
  [(CTLazuliChatBotSuggestedAction *)v5 setSuggestion:v6];

  v7 = [self->_action copyWithZone:zone];
  [(CTLazuliChatBotSuggestedAction *)v5 setAction:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];

  [coderCopy encodeObject:self->_suggestion forKey:@"kSuggestionKey"];
  [coderCopy encodeObject:self->_action forKey:@"kActionKey"];
}

- (CTLazuliChatBotSuggestedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CTLazuliChatBotSuggestedAction;
  v5 = [(CTLazuliChatBotSuggestedAction *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSuggestionKey"];
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
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kActionKey"];
    action = v5->_action;
    v5->_action = v17;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedAction)initWithReflection:(const void *)reflection
{
  v34.receiver = self;
  v34.super_class = CTLazuliChatBotSuggestedAction;
  v4 = [(CTLazuliChatBotSuggestedAction *)&v34 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliSuggestedActionType(reflection);
    v5 = [[CTLazuliChatBotSuggestion alloc] initWithReflection:reflection + 8];
    suggestion = v4->_suggestion;
    v4->_suggestion = v5;

    switch(*(reflection + 52))
    {
      case 0:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(reflection + 18);
        if (*(reflection + 103) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[0].__r_.__value_.__r.__words[1], *(reflection + 10), *(reflection + 11));
        }

        else
        {
          *&__p[0].__r_.__value_.__r.__words[1] = *(reflection + 5);
          __p[1].__r_.__value_.__r.__words[0] = *(reflection + 12);
        }

        if (*(reflection + 127) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1].__r_.__value_.__r.__words[1], *(reflection + 13), *(reflection + 14));
        }

        else
        {
          *&__p[1].__r_.__value_.__r.__words[1] = *(reflection + 104);
          *&v28 = *(reflection + 15);
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
        if (*(reflection + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(reflection + 9), *(reflection + 10));
        }

        else
        {
          __p[0] = *(reflection + 3);
        }

        v19 = [[CTLazuliSuggestedActionOpenUrlInApplication alloc] initWithReflection:__p];
        goto LABEL_34;
      case 2:
        memset(__p, 0, sizeof(__p));
        if (*(reflection + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(reflection + 9), *(reflection + 10));
        }

        else
        {
          __p[0] = *(reflection + 3);
        }

        if (*(reflection + 119) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1], *(reflection + 12), *(reflection + 13));
        }

        else
        {
          __p[1] = *(reflection + 4);
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
        if (*(reflection + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(reflection + 9), *(reflection + 10));
        }

        else
        {
          __p[0] = *(reflection + 3);
        }

        v19 = [[CTLazuliSuggestedActionComposeAudioRecording alloc] initWithReflection:__p];
        goto LABEL_34;
      case 4:
        memset(__p, 0, 24);
        if (*(reflection + 95) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(reflection + 9), *(reflection + 10));
        }

        else
        {
          __p[0] = *(reflection + 3);
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
        Lazuli::SuggestedActionShowLocation::SuggestedActionShowLocation(__p, (reflection + 72));
        v12 = [[CTLazuliSuggestedActionShowLocation alloc] initWithReflection:__p];
        v13 = v4->_action;
        v4->_action = v12;

        Lazuli::SuggestedActionShowLocation::~SuggestedActionShowLocation(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 6:
        __p[0].__r_.__value_.__s.__data_[0] = *(reflection + 72);
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
        Lazuli::ChatBotCreateCalendarEvent::ChatBotCreateCalendarEvent(__p, (reflection + 72));
        v10 = [[CTLazuliSuggestedActionCalendar alloc] initWithReflection:__p];
        v11 = v4->_action;
        v4->_action = v10;

        Lazuli::SuggestedActionCalendar::~SuggestedActionCalendar(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 8:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionDialVideoCall::SuggestedActionDialVideoCall(__p, (reflection + 72));
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
        Lazuli::SuggestedActionDialEnrichedCall::SuggestedActionDialEnrichedCall(__p, (reflection + 72));
        v8 = [[CTLazuliSuggestedActionDialEnrichedCall alloc] initWithReflection:__p];
        v9 = v4->_action;
        v4->_action = v8;

        Lazuli::SuggestedActionDialEnrichedCall::~SuggestedActionDialEnrichedCall(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 0xA:
        *&v28 = 0;
        memset(__p, 0, sizeof(__p));
        Lazuli::SuggestedActionDialPhoneNumber::SuggestedActionDialPhoneNumber(__p, (reflection + 72));
        v15 = [[CTLazuliSuggestedActionDialPhoneNumber alloc] initWithReflection:__p];
        v16 = v4->_action;
        v4->_action = v15;

        Lazuli::SuggestedActionDialVideoCall::~SuggestedActionDialVideoCall(&__p[0].__r_.__value_.__l.__data_);
        return v4;
      case 0xB:
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(reflection + 18);
        v7 = [[CTLazuliSuggestedActionDevice alloc] initWithReflection:__p];
        goto LABEL_19;
      case 0xC:
        LODWORD(__p[0].__r_.__value_.__l.__data_) = *(reflection + 18);
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