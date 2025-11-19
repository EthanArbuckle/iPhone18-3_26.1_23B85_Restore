void sub_A77CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  v6 = [a1 identifier];
  [v7 handleFailureInMethod:a2 object:a3 file:@"HDMedicalDownloadableAttachmentManager.m" lineNumber:1092 description:{@"MedicalDownloadableAttachment with identifier: %@, should have webURL xor inlineDataChecksum", v6}];
}

void sub_A7868(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 attachmentIdentifier];
  sub_B068();
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Indexing results do not contain attachmentIdentifier: %@", v5, 0xCu);
}

void sub_A7980()
{
  sub_1F600();
  v3 = v2;
  v4 = 138543618;
  v5 = v0;
  v6 = 2048;
  v7 = [sub_83060() count];
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%{public}@: Reconciliation %lu HKMedicalDownloadableAttachments", &v4, 0x16u);
}

void sub_A7A2C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [0 localizedDescription];
  v10 = HKSensitiveLogItem();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_A7BD8()
{
  sub_5C804();
  v0 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v1 handleFailureInMethod:@"(gateway != nil) ^ (signedClinicalDataIssuer != nil)" object:? file:? lineNumber:? description:?];
}

void sub_A7C48()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"now" object:? file:? lineNumber:? description:?];
}

void sub_A7CBC()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"now" object:? file:? lineNumber:? description:?];
}

void sub_A7D30()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"now" object:? file:? lineNumber:? description:?];
}

void sub_A7DA4()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_A7E10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@ credentialHasOutdatedScopes: failed to get the scope string from the authorize schema (gatewayScopeString == nil) %{public}@", &v6, 0x16u);
}

void sub_A7ED0(void *a1)
{
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%{public}@ credentialHasOutdatedScopes: method called on an account with no associated credential", &v3, 0xCu);
}

void sub_A7F78(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAuthorizationSessionEntity+HealthRecordsPlugin.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"(gatewayID != nil && accountID == nil) || (gatewayID == nil && accountID != nil)"}];
}

void sub_A7FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAuthorizationSessionEntity+HealthRecordsPlugin.m" lineNumber:132 description:{@"Unable to init gateway entity with %@", a3}];
}

void sub_A8074(void *a1)
{
  v1 = a1;
  v2 = HKSensitiveLogItem();
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "%{public}@ has no valid provenance", &v3, 0xCu);
}

void sub_A81A4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataRecordEntity.willDeleteWithProfile:transaction:error: failed to retrieve original SCD sync identifier, cannot inform ingestion. Original SCD record ROWID: %{public}@", &v2, 0xCu);
}

void sub_A821C()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"postedReminder == nil || postedReminder.wasPosted == YES" object:? file:? lineNumber:? description:?];
}

void sub_A8290()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"unpostedReminder == nil || unpostedReminder.wasPosted == NO" object:? file:? lineNumber:? description:?];
}

void sub_A8304()
{
  sub_B068();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A8444()
{
  sub_B068();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A8520()
{
  sub_8E2B8();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_A855C()
{
  sub_B068();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A85CC()
{
  sub_B068();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A863C()
{
  sub_B068();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A86AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = HDUserNotificationResponseButtonToString();
  sub_13D18();
  v7 = a3;
  _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Received notification response %{public}@ for pending reminder ID %{public}@", v6, 0x16u);
}

void sub_A8760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsAPIReminderRegistry.m" lineNumber:351 description:{@"No reminder for pending reminder ID %@", a3}];
}

void sub_A88B0()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"[source _isApplication]" object:? file:? lineNumber:? description:?];
}

void sub_A89F4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_B074(&dword_0, a2, a3, "Failed to open user activity %@ in the Health app: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_A8A70(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_8E290();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_A8AE8()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"[source _isApplication]" object:? file:? lineNumber:? description:?];
}

void sub_A8B5C()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"[source _isApplication]" object:? file:? lineNumber:? description:?];
}

void sub_A8BD0(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  sub_1160C(&dword_0, v4, v5, "Dropping CHR API reminder for source %@ due to non-unlimited authorization mode", v6, v7, v8, v9, v10);
}

void sub_A8C60(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  sub_1160C(&dword_0, v4, v5, "Dropping CHR API reminder for source %@ due to no clinical types authorized for reading", v6, v7, v8, v9, v10);
}

void sub_A8CF0(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  sub_1160C(&dword_0, v4, v5, "Dropping reminder for source %@ due to no clinical authorization records", v6, v7, v8, v9, v10);
}

void sub_A8D80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = HKSensitiveLogItem();
  sub_13D18();
  v7 = a3;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to fetch clinical types authorization records for source %@, so dropping reminder: %{public}@", v6, 0x16u);
}

void sub_A8E34()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"recordsByType.count > 0" object:? file:? lineNumber:? description:?];
}

void sub_A8EA8()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"recordsByType.count > 0" object:? file:? lineNumber:? description:?];
}

void sub_A8F1C()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"bundleIdentifiers != nil" object:? file:? lineNumber:? description:?];
}

void sub_A8F90(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "Deregistering app %@ from CHR API reminders", v4, 0xCu);
}

void sub_A9030()
{
  sub_8E2B8();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_A906C()
{
  sub_8E2B8();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_A90A8()
{
  sub_8E2B8();
  sub_8E290();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_A9154(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Time interval for defaults key %{public}@ must be positive. Got: %f", &v3, 0x16u);
}

void sub_A9244()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"deferralPeriod > 0" object:? file:? lineNumber:? description:?];
}

void sub_A92B8()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"gracePeriod > 0" object:? file:? lineNumber:? description:?];
}

void sub_A932C()
{
  sub_5C804();
  v1 = +[NSAssertionHandler currentHandler];
  sub_85B88();
  [v0 handleFailureInMethod:@"throttlingInterval > 0" object:? file:? lineNumber:? description:?];
}

void sub_A93A0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsDaemonExtension.m" lineNumber:60 description:@"Health Records Daemon Extension should not be nil"];
}

void sub_A943C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalFHIRResourceEntity+HealthRecordsPlugin.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"resourceObjects"}];
}

void sub_A94B8(uint64_t a1, void *a2, const char *a3)
{
  v4 = a2;
  v5 = NSStringFromSelector(a3);
  sub_2BC20();
  sub_79F60();
  _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x16u);
}

void sub_A95D8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to query whether resource already exists because transaction has been interrupted, aborting", &v2, 0xCu);
}

void sub_A96BC(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%{public}@ Failed to query existing resource's first seen date, proceeding to insert: %@", buf, 0x16u);
}

void sub_A9724(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to query existing resource's first seen date because transaction has been interrupted, aborting", &v2, 0xCu);
}

void sub_A9874(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_97098();
  v3 = v2;
  sub_79F60();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_A9924(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = *(*a2 + 24);
  sub_B074(&dword_0, a2, a3, "%{public}@ FHIRResource at anchor (%lld) exceeds max message size. Skipping.", *v3, *&v3[8], *&v3[16]);
}

void sub_A99A4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 88);
  *&v3[12] = 2048;
  *&v3[14] = a2;
  sub_970AC(&dword_0, a2, a3, "%{public}@ unable to fetch account ROWID, skipping resource at anchor %lld", *v3, *&v3[8], *&v3[16]);
}

void sub_A9A20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = NSStringFromSelector(v2);
  sub_2BC20();
  sub_79F60();
  _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, 0x20u);
}

void sub_A9ADC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceObject+Codable.m" lineNumber:43 description:@"Must not use this method on HDOriginalFHIRResourceObjects"];
}

void sub_A9B50(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_99B08();
  sub_172A4(&dword_0, v2, v3, "%{public}@: submitting HealthRecords daily analytics failed: %@", v4, v5, v6, v7, v8);
}

void sub_A9BE4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_class();
  sub_99B08();
  sub_172A4(&dword_0, v4, v5, "%{public}@: failed to submit clinical sharing daily analytics, error: %@", v6, v7, v8, v9, v10);
}

void sub_A9C78(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_168D8(&dword_0, v5, v6, "%{public}@ patient comparison beginning", v7, v8, v9, v10, 2u);
}

void sub_A9D10(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_168D8(&dword_0, v5, v6, "%{public}@ patient comparison done", v7, v8, v9, v10, 2u);
}

void sub_A9DA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 debugDescription];
  sub_1728C();
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ patient comparison failed with error: %{public}@", v5, 0x16u);
}

void sub_A9E58(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1728C();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%{public}@ canceling patient comparison with error: %{public}@", v5, 0x16u);
}