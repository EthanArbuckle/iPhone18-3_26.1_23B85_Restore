@interface MTRDataTypeICEServerStruct
- (MTRDataTypeICEServerStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeICEServerStruct

- (MTRDataTypeICEServerStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRDataTypeICEServerStruct;
  v2 = [(MTRDataTypeICEServerStruct *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    urls = v2->_urls;
    v2->_urls = array;

    username = v2->_username;
    v2->_username = 0;

    credential = v2->_credential;
    v2->_credential = 0;

    caid = v2->_caid;
    v2->_caid = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeICEServerStruct);
  urls = [(MTRDataTypeICEServerStruct *)self urls];
  [(MTRDataTypeICEServerStruct *)v4 setUrls:urls];

  username = [(MTRDataTypeICEServerStruct *)self username];
  [(MTRDataTypeICEServerStruct *)v4 setUsername:username];

  credential = [(MTRDataTypeICEServerStruct *)self credential];
  [(MTRDataTypeICEServerStruct *)v4 setCredential:credential];

  caid = [(MTRDataTypeICEServerStruct *)self caid];
  [(MTRDataTypeICEServerStruct *)v4 setCaid:caid];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: urls:%@ username:%@; credential:%@; caid:%@; >", v5, self->_urls, self->_username, self->_credential, self->_caid];;

  return v6;
}

@end