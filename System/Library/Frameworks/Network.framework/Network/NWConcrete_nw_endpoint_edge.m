@interface NWConcrete_nw_endpoint_edge
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation NWConcrete_nw_endpoint_edge

- (void)dealloc
{
  objc_storeWeak(&self->endpoint, 0);
  name = self->name;
  if (name)
  {
    free(name);
    self->name = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_endpoint_edge;
  [(NWConcrete_nw_endpoint_edge *)&v4 dealloc];
}

- (id)redactedDescription
{
  v3 = objc_loadWeakRetained(&self->endpoint);
  v4 = v3;
  if (v3)
  {
    logging_description = _nw_endpoint_get_logging_description(v3);
  }

  else
  {
    logging_description = "<NULL>";
  }

  v6 = *MEMORY[0x1E695E480];

  v7 = CFStringCreateWithFormat(v6, 0, @"<nw_endpoint_edge %s %s>", &self->identifier, logging_description);

  return v7;
}

- (NSString)description
{
  v2 = *MEMORY[0x1E695E480];
  p_identifier = &self->identifier;
  WeakRetained = objc_loadWeakRetained(&self->endpoint);
  v5 = CFStringCreateWithFormat(v2, 0, @"<nw_endpoint_edge %s %@>", p_identifier, WeakRetained);

  return v5;
}

@end