@interface NWConcrete_nw_ids_info
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_ids_info

- (NSString)description
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_ids_info session:%s pseudonym:%s pushtoken:%s>", self->session_id, self->pseudonym, self->push_token);

  return v2;
}

- (void)dealloc
{
  session_id = self->session_id;
  if (session_id)
  {
    free(session_id);
    self->session_id = 0;
  }

  pseudonym = self->pseudonym;
  if (pseudonym)
  {
    free(pseudonym);
    self->pseudonym = 0;
  }

  push_token = self->push_token;
  if (push_token)
  {
    free(push_token);
    self->push_token = 0;
  }

  v6.receiver = self;
  v6.super_class = NWConcrete_nw_ids_info;
  [(NWConcrete_nw_ids_info *)&v6 dealloc];
}

@end