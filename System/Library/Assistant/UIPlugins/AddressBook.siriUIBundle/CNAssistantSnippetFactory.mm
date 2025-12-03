@interface CNAssistantSnippetFactory
- (CNAssistantSnippetFactory)init;
- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation CNAssistantSnippetFactory

- (CNAssistantSnippetFactory)init
{
  v6.receiver = self;
  v6.super_class = CNAssistantSnippetFactory;
  v2 = [(CNAssistantSnippetFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNContactStore);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;
  }

  return v2;
}

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [CNAssistantSnippetController alloc];
    contactStore = [(CNAssistantSnippetFactory *)self contactStore];
    v9 = [(CNAssistantSnippetController *)v7 initWithAceObject:snippetCopy contactStore:contactStore error:error];

    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_4228();
    if (error)
    {
      goto LABEL_5;
    }
  }

  else if (error)
  {
LABEL_5:
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *error = v9 = 0;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key
{
  itemCopy = item;
  disambiguationProvider = self->_disambiguationProvider;
  if (!disambiguationProvider)
  {
    v7 = [CNAssistantDisambiguationProvider alloc];
    contactStore = [(CNAssistantSnippetFactory *)self contactStore];
    v9 = [(CNAssistantDisambiguationProvider *)v7 initWithContactStore:contactStore];
    v10 = self->_disambiguationProvider;
    self->_disambiguationProvider = v9;

    disambiguationProvider = self->_disambiguationProvider;
  }

  v11 = [(CNAssistantDisambiguationProvider *)disambiguationProvider disambiguationItemForListItem:itemCopy];

  return v11;
}

@end