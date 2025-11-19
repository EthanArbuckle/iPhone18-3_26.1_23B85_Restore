@interface INCreateNoteIntent
@end

@implementation INCreateNoteIntent

void __69__INCreateNoteIntent_ACSCardRequesting___buildCardFromRequest_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CD3E50];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = objc_opt_class();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"createdNote.contents[%zd]", a3];
  v9 = [v4 parameterForClass:v8 keyPath:v10];
  [v5 setObject:v9 forKey:v7];
}

@end