@interface WFAppendToNoteAction
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionResultWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)parameterSummary;
- (id)remoteExecuteOnPlatforms;
- (id)serializationKeysByParameter;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
@end

@implementation WFAppendToNoteAction

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Appended Note", @"Appended Note");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"apple|add", @"apple|add");
  v5 = [contextCopy localize:v4];

  v6 = [v5 componentsSeparatedByString:@"|"];

  return v6;
}

- (id)localizedDescriptionResultWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"The updated note", @"The updated note");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Appends the text passed as input to the specified note.", @"Appends the text passed as input to the specified note.");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)parameterSummary
{
  v2 = objc_alloc(MEMORY[0x277D7C0C0]);
  v3 = WFLocalizedStringResourceWithKey(@"Append ${text} to ${entity}", @"Append ${text} to ${entity}");
  v4 = [v2 initWithString:v3];

  return v4;
}

- (id)remoteExecuteOnPlatforms
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277D7CC78];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)serializationKeysByParameter
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"entity";
  v5[1] = @"text";
  v6[0] = @"WFNote";
  v6[1] = @"WFInput";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to append %2$@ to a note?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to append content to a note?");
    [v7 localizedStringWithFormat:v9, nameCopy, 0];
  }
  v10 = ;

  return v10;
}

@end