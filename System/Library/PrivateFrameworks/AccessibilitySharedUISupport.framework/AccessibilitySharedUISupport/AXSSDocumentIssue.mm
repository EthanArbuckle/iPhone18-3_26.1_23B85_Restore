@interface AXSSDocumentIssue
- (AXSSDocumentIssue)init;
- (_NSRange)range;
- (id)description;
- (void)_updateSuggestionStyleIfNeeded;
- (void)setOffendingText:(id)text;
- (void)setSuggestions:(id)suggestions;
@end

@implementation AXSSDocumentIssue

- (AXSSDocumentIssue)init
{
  v3.receiver = self;
  v3.super_class = AXSSDocumentIssue;
  result = [(AXSSDocumentIssue *)&v3 init];
  if (result)
  {
    result->_autoMatchSuggestionAttributes = 1;
  }

  return result;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = AXSSDocumentIssue;
  v3 = [(AXSSDocumentIssue *)&v21 description];
  v4 = [v3 mutableCopy];

  offendingText = [(AXSSDocumentIssue *)self offendingText];
  string = [offendingText string];
  v7 = AXDocumentConsoleString(string);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  suggestions = [(AXSSDocumentIssue *)self suggestions];
  v9 = [suggestions countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(suggestions);
        }

        string2 = [*(*(&v17 + 1) + 8 * i) string];
        v14 = AXDocumentConsoleString(string2);
      }

      v10 = [suggestions countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  [v4 appendString:@"}"];
  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_updateSuggestionStyleIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  if (![(AXSSDocumentIssue *)self autoMatchSuggestionAttributes])
  {
LABEL_14:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  suggestions = [(AXSSDocumentIssue *)self suggestions];
  if ([suggestions count])
  {
    offendingText = [(AXSSDocumentIssue *)self offendingText];
    v4 = [offendingText length];

    if (v4)
    {
      offendingText2 = [(AXSSDocumentIssue *)self offendingText];
      v6 = [offendingText2 attributesAtIndex:0 effectiveRange:0];

      v7 = objc_opt_new();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      selfCopy = self;
      suggestions2 = [(AXSSDocumentIssue *)self suggestions];
      v9 = [suggestions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(suggestions2);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = objc_alloc(MEMORY[0x277CCA898]);
            string = [v13 string];
            v16 = [v14 initWithString:string attributes:v6];

            if (v16)
            {
              [v7 addObject:v16];
            }
          }

          v10 = [suggestions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v10);
      }

      v17 = [v7 copy];
      suggestions = selfCopy->_suggestions;
      selfCopy->_suggestions = v17;
    }

    goto LABEL_14;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setSuggestions:(id)suggestions
{
  v4 = [suggestions copy];
  suggestions = self->_suggestions;
  self->_suggestions = v4;

  [(AXSSDocumentIssue *)self _updateSuggestionStyleIfNeeded];
}

- (void)setOffendingText:(id)text
{
  v4 = [text copy];
  offendingText = self->_offendingText;
  self->_offendingText = v4;

  [(AXSSDocumentIssue *)self _updateSuggestionStyleIfNeeded];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end