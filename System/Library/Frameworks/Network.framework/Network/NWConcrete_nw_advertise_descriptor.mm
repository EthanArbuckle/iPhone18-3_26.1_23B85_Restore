@interface NWConcrete_nw_advertise_descriptor
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_advertise_descriptor

- (void)dealloc
{
  txt_record = self->txt_record;
  self->txt_record = 0;

  name = self->name;
  if (name)
  {
    free(name);
    self->name = 0;
  }

  type = self->type;
  if (type)
  {
    free(type);
    self->type = 0;
  }

  domain = self->domain;
  if (domain)
  {
    free(domain);
    self->domain = 0;
  }

  application_service_name = self->application_service_name;
  if (application_service_name)
  {
    free(application_service_name);
    self->application_service_name = 0;
  }

  bundle_id = self->bundle_id;
  if (bundle_id)
  {
    free(bundle_id);
    self->bundle_id = 0;
  }

  custom_service = self->custom_service;
  if (custom_service)
  {
    free(custom_service);
    self->custom_service = 0;
  }

  v10.receiver = self;
  v10.super_class = NWConcrete_nw_advertise_descriptor;
  [(NWConcrete_nw_advertise_descriptor *)&v10 dealloc];
}

- (NSString)description
{
  v2 = nw_advertise_descriptor_copy_description(self);
  if (v2)
  {
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v2, 0x8000100u, *MEMORY[0x1E695E488]);
  }

  return v2;
}

@end