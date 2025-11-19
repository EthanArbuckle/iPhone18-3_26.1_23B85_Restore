@interface CTDataConnectionAgentData
- (CTDataConnectionAgentData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initAgentDataFromCellularInternetPath;
- (id)initAgentDataFromPath:(id)a3 domain:(id)a4 agentType:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTDataConnectionAgentData

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", registrationStatus=%d", -[CTDataConnectionAgentData registrationStatus](self, "registrationStatus")];
  v4 = [(CTDataConnectionAgentData *)self inHomeCountry];
  [v3 appendFormat:@", inHomeCountry=%@", v4];

  [v3 appendFormat:@", dataPlanTier=%d", -[CTDataConnectionAgentData dataPlanTier](self, "dataPlanTier")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setRegistrationStatus:{-[CTDataConnectionAgentData registrationStatus](self, "registrationStatus")}];
  v5 = [(CTDataConnectionAgentData *)self inHomeCountry];
  v6 = [v5 copy];
  [v4 setInHomeCountry:v6];

  [v4 setDataPlanTier:{-[CTDataConnectionAgentData dataPlanTier](self, "dataPlanTier")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt:-[CTDataConnectionAgentData registrationStatus](self forKey:{"registrationStatus"), @"registrationStatus"}];
  v4 = [(CTDataConnectionAgentData *)self inHomeCountry];
  [v5 encodeObject:v4 forKey:@"inHomeCountry"];

  [v5 encodeInt:-[CTDataConnectionAgentData dataPlanTier](self forKey:{"dataPlanTier"), @"dataPlanTier"}];
}

- (CTDataConnectionAgentData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTDataConnectionAgentData;
  v5 = [(CTDataConnectionAgentData *)&v9 init];
  if (v5)
  {
    v5->_registrationStatus = [v4 decodeIntForKey:@"registrationStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inHomeCountry"];
    inHomeCountry = v5->_inHomeCountry;
    v5->_inHomeCountry = v6;

    v5->_dataPlanTier = [v4 decodeIntForKey:@"dataPlanTier"];
  }

  return v5;
}

- (id)initAgentDataFromCellularInternetPath
{
  v3 = MEMORY[0x1865E0D90](self, a2);
  v4 = xpc_array_create(0, 0);
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
  v5 = xpc_array_create(0, 0);
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Internet");
  nw_parameters_set_required_netagent_classes();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (evaluator_for_endpoint)
  {
    nw_path_evaluator_start();
    v7 = nw_path_evaluator_copy_path();
    if (v7)
    {
      nw_path_evaluator_cancel();
      v8 = [(CTDataConnectionAgentData *)self initAgentDataFromInternetPath:v7];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = CTDataConnectionAgentData;
      v8 = [(CTDataConnectionAgentData *)&v11 init];
      nw_path_evaluator_cancel();
    }

    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CTDataConnectionAgentData;
    v9 = [(CTDataConnectionAgentData *)&v12 init];
  }

  return v9;
}

- (id)initAgentDataFromPath:(id)a3 domain:(id)a4 agentType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = CTDataConnectionAgentData;
  v11 = [(CTDataConnectionAgentData *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_registrationStatus = 0;
    inHomeCountry = v11->_inHomeCountry;
    v11->_inHomeCountry = 0;

    v12->_dataPlanTier = 0;
    if (v8 && v9 && v10)
    {
      v14 = nw_path_copy_netagent_dictionary();
      if (v14)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __68__CTDataConnectionAgentData_initAgentDataFromPath_domain_agentType___block_invoke;
        applier[3] = &unk_1E6A48800;
        v19 = v9;
        v20 = v10;
        v21 = v12;
        xpc_dictionary_apply(v14, applier);
      }

      v15 = v12;
    }

    else
    {
      v16 = v12;
    }
  }

  return v12;
}

BOOL __68__CTDataConnectionAgentData_initAgentDataFromPath_domain_agentType___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (!data || length < 0xD8 || length != *(data + 53) + 216)
  {
    return result;
  }

  if (strcmp(data + 16, [*(a1 + 32) UTF8String]) || strcmp(data + 48, objc_msgSend(*(a1 + 40), "UTF8String")))
  {
    return 1;
  }

  v6 = *(data + 53);
  if (!v6)
  {
    return 0;
  }

  v7 = v6 > 0xCB;
  if (v6 <= 0xCB)
  {
    v8 = *(data + 53);
  }

  else
  {
    v8 = v6 - 204;
  }

  v9 = 216;
  if (v7)
  {
    v9 = 420;
  }

  if (v8 != 11)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __68__CTDataConnectionAgentData_initAgentDataFromPath_domain_agentType___block_invoke_cold_1(v8);
    return 0;
  }

  v10 = &data[v9];
  *(*(a1 + 48) + 8) = *v10;
  if (v10[10])
  {
    v11 = *(a1 + 48);
    v12 = *(v11 + 16);
    if (v10[1])
    {
      v13 = MEMORY[0x1E695E118];
    }

    else
    {
      v13 = MEMORY[0x1E695E110];
    }

    *(v11 + 16) = v13;
  }

  result = 0;
  *(*(a1 + 48) + 12) = v10[4];
  return result;
}

@end