@interface TerminusAvailabilityManagerImpl
- (TerminusAvailabilityManagerImpl)init;
- (id).cxx_construct;
- (void)initializePathEvaluator;
- (void)start:(function<void)(std:()std::optional<BOOL> :optional<BOOL> queue:;
@end

@implementation TerminusAvailabilityManagerImpl

- (TerminusAvailabilityManagerImpl)init
{
  v8.receiver = self;
  v8.super_class = TerminusAvailabilityManagerImpl;
  v2 = [(TerminusAvailabilityManagerImpl *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lowLatencyTetheringEvaluator = v2->_lowLatencyTetheringEvaluator;
    v2->_lowLatencyTetheringEvaluator = 0;

    tetheringEvaluator = v3->_tetheringEvaluator;
    v3->_tetheringEvaluator = 0;

    v9[0] = off_101E7DB08;
    v9[3] = v9;
    sub_1007A9140(v9, v3->_callback.__f_.__buf_.__data);
    sub_1007A9444(v9);
    queue = v3->_queue;
    v3->_queue = 0;
  }

  return v3;
}

- (void)initializePathEvaluator
{
  v3 = nw_parameters_create();
  v4 = xpc_string_create("com.apple.networkrelay");
  v5 = xpc_string_create("TetheringAvailability");
  v6 = xpc_array_create(0, 0);
  xpc_array_append_value(v6, v4);
  v7 = xpc_array_create(0, 0);
  xpc_array_append_value(v7, v5);
  nw_parameters_set_required_netagent_classes();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  tetheringEvaluator = self->_tetheringEvaluator;
  self->_tetheringEvaluator = evaluator_for_endpoint;

  v10 = self->_tetheringEvaluator;
  v11 = "llocatorISB_EEEEEEEENK3$_0clENS1_12basic_stringIcNS1_11char_traitsIcEENSC_IcEEEENS1_8optionalINSA_IhNSC_IhEEEEEENSN_INS1_3mapISM_NSR_ISM_SM_NS1_4lessISM_EENSC_INS1_4pairIKSM_SM_EEEEEEST_NSC_INSU_ISV_SY_EEEEEEEEbEUlNS1_10shared_ptrINS3_4Http12HttpResponseEEEE_";
  if (v10)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1007A63D4;
    v42[3] = &unk_101E7DAB8;
    v42[4] = self;
    v12 = objc_retainBlock(v42);
    nw_path_evaluator_set_update_handler();
    nw_path_evaluator_start();
    v13 = nw_path_evaluator_copy_path();
    (v12[2])(v12, v13);

    v11 = "ZZN34CellularPlanSubscriptionController20getCarrierSetup_syncE33CellularPlanGetCarrierSetupActionNSt3__18functionIFvN3ctu2cf11CFSharedRefIK9__CFArrayEE17CellularPlanErrorNS1_6vectorI16CarrierSetupInfoNS1_9allocatorISB_EEEEEEEENK3$_0clENS1_12basic_stringIcNS1_11char_traitsIcEENSC_IcEEEENS1_8optionalINSA_IhNSC_IhEEEEEENSN_INS1_3mapISM_NSR_ISM_SM_NS1_4lessISM_EENSC_INS1_4pairIKSM_SM_EEEEEEST_NSC_INSU_ISV_SY_EEEEEEEEbEUlNS1_10shared_ptrINS3_4Http12HttpResponseEEEE_" + 206;
  }

  else
  {
    v14 = sub_100032AC8(self->_logger.__ptr_);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10177E5B4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (v10)
  {
    v22 = nw_parameters_create();
    v23 = xpc_string_create("com.apple.networkrelay");
    v24 = xpc_string_create("LowLatencyTetheringAvailability");
    v25 = xpc_array_create(0, 0);
    xpc_array_append_value(v25, v23);
    v26 = xpc_array_create(0, 0);
    xpc_array_append_value(v26, v24);
    nw_parameters_set_required_netagent_classes();
    v27 = nw_path_create_evaluator_for_endpoint();
    lowLatencyTetheringEvaluator = self->_lowLatencyTetheringEvaluator;
    self->_lowLatencyTetheringEvaluator = v27;

    v29 = self->_lowLatencyTetheringEvaluator;
    if (v29)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = *(v11 + 383);
      v41[2] = sub_1007A6558;
      v41[3] = &unk_101E7DAB8;
      v41[4] = self;
      v30 = objc_retainBlock(v41);
      nw_path_evaluator_set_update_handler();
      nw_path_evaluator_start();
      v31 = nw_path_evaluator_copy_path();
      (*(v30 + 16))(v30, v31);
    }

    else
    {
      v30 = sub_100032AC8(self->_logger.__ptr_);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10177E5EC(v30, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    if (v29)
    {
      v39 = sub_100032AC8(self->_logger.__ptr_);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Successfully created path evaluators for Terminus", v40, 2u);
      }
    }
  }
}

- (void)start:(function<void)(std:()std::optional<BOOL> :optional<BOOL> queue:
{
  v7 = a4;
  sub_1007A6764(self->_callback.__f_.__buf_.__data, a3);
  objc_storeStrong(&self->_queue, a4);
  operator new();
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 7) = 0;
  return self;
}

@end